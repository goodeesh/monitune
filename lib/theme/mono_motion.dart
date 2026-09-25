import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'mono_tokens.dart';

/// Material 3 Expressive-style motion, hand-rolled on spring physics.
///
/// Flutter 3.47 ships the expressive *colour* system and the M3 duration/easing
/// tokens, but no expressive component or motion scheme, so the spring feel is
/// built here from [SpringSimulation] and plugged into implicit animations via
/// [SpringCurve].
class MonoMotion {
  MonoMotion._();

  /// Quick, barely-overshooting — selection and toggle feedback.
  static const SpringDescription snappy =
      SpringDescription(mass: 1, stiffness: 420, damping: 32);

  /// Softer settle for larger surfaces (cards, sheets).
  static const SpringDescription gentle =
      SpringDescription(mass: 1, stiffness: 240, damping: 26);

  /// A little more bounce — press release only, never for state you must read.
  static const SpringDescription springy =
      SpringDescription(mass: 1, stiffness: 500, damping: 26);

  /// True when the platform asks for animations to be removed.
  static bool reducedMotion(BuildContext context) =>
      MediaQuery.maybeOf(context)?.disableAnimations ?? false;

  /// A [Curve] backed by a spring simulation, for implicit animations such as
  /// [AnimatedContainer], [AnimatedAlign] and [TweenAnimationBuilder].
  static Curve curve(SpringDescription spring) => _SpringCurve(spring);

  /// Respects the platform's "remove animations" accessibility setting by
  /// falling back to a plain easing curve.
  static Curve curveFor(BuildContext context, SpringDescription spring) =>
      reducedMotion(context) ? Curves.easeOutCubic : curve(spring);

  /// Runs [controller] to 1 with a spring, or snaps it when motion is reduced.
  static void springTo(
    BuildContext context,
    AnimationController controller, {
    SpringDescription spring = snappy,
  }) {
    if (reducedMotion(context)) {
      controller.value = 1;
      return;
    }
    controller.animateWith(SpringSimulation(spring, 0, 1, 0));
  }
}

class _SpringCurve extends Curve {
  _SpringCurve(this.spring) : _settleSeconds = _settleFor(spring);

  final SpringDescription spring;
  final double _settleSeconds;

  static double _settleFor(SpringDescription spring) {
    final simulation = SpringSimulation(spring, 0, 1, 0);
    var t = 0.05;
    while (t < 4.0 && !simulation.isDone(t)) {
      t *= 1.4;
    }
    return t;
  }

  @override
  double transformInternal(double t) {
    if (t <= 0) return 0;
    if (t >= 1) return 1;
    final simulation = SpringSimulation(spring, 0, 1, 0);
    return simulation.x(_settleSeconds * t).clamp(0.0, 1.0);
  }
}

/// Presses its child down and releases it with a spring. Wraps any tappable
/// widget and leaves the platform ripple of the child itself intact.
class SpringPress extends StatefulWidget {
  const SpringPress({super.key, required this.child, this.pressedScale = 0.97});

  final Widget child;
  final double pressedScale;

  @override
  State<SpringPress> createState() => _SpringPressState();
}

class _SpringPressState extends State<SpringPress> {
  bool _pressed = false;

  void _set(bool value) {
    if (_pressed == value || !mounted) return;
    setState(() => _pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.deferToChild,
      onPointerDown: (_) => _set(true),
      onPointerUp: (_) => _set(false),
      onPointerCancel: (_) => _set(false),
      child: AnimatedScale(
        scale: _pressed ? widget.pressedScale : 1,
        duration: const Duration(milliseconds: 420),
        curve: MonoMotion.curveFor(context, MonoMotion.springy),
        child: widget.child,
      ),
    );
  }
}

/// A spring [AnimatedSwitcher] for status text and badges.
class SpringSwitcher extends StatelessWidget {
  const SpringSwitcher({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 380),
  });

  final Widget child;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      switchInCurve: MonoMotion.curveFor(context, MonoMotion.snappy),
      switchOutCurve: Curves.easeOut,
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.92, end: 1).animate(animation),
          child: child,
        ),
      ),
      child: child,
    );
  }
}

/// Expressive loading indicator: a circle that morphs into a squircle while it
/// rotates. Stands in for the M3 Expressive loading indicator, which Flutter
/// does not ship.
class MorphingLoader extends StatefulWidget {
  const MorphingLoader({super.key, this.size = 18, this.color});

  final double size;
  final Color? color;

  @override
  State<MorphingLoader> createState() => _MorphingLoaderState();
}

class _MorphingLoaderState extends State<MorphingLoader> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color ?? Theme.of(context).colorScheme.onPrimary;
    return RepaintBoundary(
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) => CustomPaint(
            painter: _MorphingLoaderPainter(_controller.value, color),
          ),
        ),
      ),
    );
  }
}

class _MorphingLoaderPainter extends CustomPainter {
  _MorphingLoaderPainter(this.t, this.color);

  final double t;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    // Two shape states (circle ⇄ squircle) cross-fade while the mark rotates.
    final phase = (t * 2) % 2;
    final toSquircle = phase <= 1 ? phase : 2 - phase;
    final squircle = RRect.fromRectAndRadius(
      Offset.zero & size,
      Radius.circular(size.shortestSide * 0.5 * toSquircle),
    );
    final shape = Path.combine(
      PathOperation.intersect,
      Path()..addOval(Offset.zero & size),
      Path()..addRRect(squircle),
    );
    canvas
      ..save()
      ..translate(size.width / 2, size.height / 2)
      ..rotate(t * 6.2831853)
      ..translate(-size.width / 2, -size.height / 2)
      ..drawPath(shape, paint)
      ..restore();
  }

  @override
  bool shouldRepaint(_MorphingLoaderPainter old) => old.t != t || old.color != color;
}

/// A segmented control whose selection pill morphs position and width with a
/// spring — the Material 3 Expressive segmented-control feel.
class MorphingSegmented<T> extends StatefulWidget {
  const MorphingSegmented({
    super.key,
    required this.value,
    required this.items,
    required this.labelBuilder,
    required this.onChanged,
    this.height = 48,
  });

  final T value;
  final List<T> items;
  final String Function(T value) labelBuilder;
  final ValueChanged<T> onChanged;
  final double height;

  @override
  State<MorphingSegmented<T>> createState() => _MorphingSegmentedState<T>();
}

class _MorphingSegmentedState<T> extends State<MorphingSegmented<T>>
    with SingleTickerProviderStateMixin {
  late final AnimationController _morph = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 520),
    value: 1,
  );

  Rect? _from;
  Rect? _to;
  double? _lastWidth;

  @override
  void dispose() {
    _morph.dispose();
    super.dispose();
  }

  Rect get _current {
    final to = _to;
    if (to == null) return Rect.zero;
    final from = _from ?? to;
    return Rect.lerp(from, to, _morph.value.clamp(0.0, 1.0))!;
  }

  void _moveTo(Rect next) {
    if (_to == next) return;
    _from = _current;
    _to = next;
    MonoMotion.springTo(context, _morph);
    setState(() {});
  }

  void _snapTo(Rect next) {
    _from = next;
    _to = next;
    _morph.value = 1;
  }

  @override
  Widget build(BuildContext context) {
    final tokens = MonoTokens.of(context);
    final scheme = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(14);
    if (widget.items.isEmpty) return const SizedBox.shrink();

    // The LayoutBuilder lives *inside* the track so the pill is measured against
    // the padded inner box rather than the outer one.
    return Container(
      height: widget.height,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: tokens.surfaceHigh,
        borderRadius: radius,
        border: Border.all(color: tokens.surfaceBorder),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const gap = 6.0;
          final count = widget.items.length;
          final width = constraints.maxWidth;
          final itemWidth = (width - gap * (count - 1)) / count;
          final pillHeight = constraints.maxHeight.isFinite ? constraints.maxHeight : 0.0;

          Rect rectFor(int index) => Rect.fromLTWH(
                index * (itemWidth + gap),
                0,
                itemWidth,
                pillHeight,
              );

          final selectedIndex = widget.items.indexOf(widget.value);
          final index = selectedIndex < 0 ? 0 : selectedIndex;
          final target = rectFor(index);

          // Snap on first layout and whenever the available width changes
          // (rotation, split screen), morph only on a real selection change.
          if (_to == null || _lastWidth != width) {
            _snapTo(target);
            _lastWidth = width;
          } else {
            _to = target;
          }

          return AnimatedBuilder(
            animation: _morph,
            builder: (context, _) {
              final rect = _current;
              return Stack(
                children: [
                  Positioned(
                    left: rect.left,
                    top: rect.top,
                    width: rect.width,
                    height: rect.height,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: scheme.primary,
                        borderRadius: radius,
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(count, (i) {
                      final selected = i == index;
                      return Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            if (selected) return;
                            _moveTo(rectFor(i));
                            widget.onChanged(widget.items[i]);
                          },
                          child: Center(
                            // Fixed-size labels: no scale-down, no enter
                            // animation, so every option always renders at the
                            // same size (a morphing pill carries the motion).
                            child: Text(
                              widget.labelBuilder(widget.items[i]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: selected ? scheme.onPrimary : tokens.textSecondary,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

/// Fades, lifts and (optionally) scales its child in once, on first build.
class SpringReveal extends StatefulWidget {
  const SpringReveal({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.lift = 18,
    this.beginScale = 0.97,
  });

  final Widget child;
  final Duration delay;

  /// Distance in logical pixels the child travels while appearing.
  final double lift;
  final double beginScale;

  @override
  State<SpringReveal> createState() => _SpringRevealState();
}

class _SpringRevealState extends State<SpringReveal> with SingleTickerProviderStateMixin {
  static const int _revealMs = 620;

  late final int _delayMs = widget.delay.inMilliseconds;
  late final int _totalMs = _delayMs + _revealMs;

  // The delay is part of the animation timeline rather than a Future.delayed,
  // so there is no pending timer to leak when the widget goes away.
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: _totalMs),
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (MonoMotion.reducedMotion(context)) {
      _controller.stop();
      return widget.child;
    }
    final elapsed = _controller.value * _totalMs;
    final t = ((elapsed - _delayMs) / _revealMs).clamp(0.0, 1.0);
    final eased = MonoMotion.curve(MonoMotion.gentle).transform(t);
    return Opacity(
      opacity: eased.clamp(0.0, 1.0),
      child: Transform.translate(
        offset: Offset(0, widget.lift * (1 - eased)),
        child: widget.beginScale == 1
            ? widget.child
            : Transform.scale(
                scale: widget.beginScale + (1 - widget.beginScale) * eased,
                child: widget.child,
              ),
      ),
    );
  }
}

/// Spring page transition used for every pushed MoniTune screen.
class MonoPageTransitionsBuilder extends PageTransitionsBuilder {
  const MonoPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final reduced = MonoMotion.reducedMotion(context);
    final enter = reduced
        ? animation
        : CurvedAnimation(parent: animation, curve: MonoMotion.curve(MonoMotion.gentle));
    return FadeTransition(
      opacity: enter,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.035),
          end: Offset.zero,
        ).animate(enter),
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.985, end: 1).animate(enter),
          child: child,
        ),
      ),
    );
  }
}
