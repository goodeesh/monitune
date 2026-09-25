import 'dart:async';
import 'dart:convert';
import 'dart:io';

/// Checks the project's GitHub Releases for a newer version.
///
/// Deliberately manual: the app only contacts GitHub when the user taps
/// "Check for updates", so nothing is sent anywhere until they ask.
class UpdateChecker {
  UpdateChecker._();

  static const String repository = 'goodeesh/monitune';

  static const Duration _timeout = Duration(seconds: 12);

  /// 10 requests/minute unauthenticated (per IP), so a shared mobile IP can
  /// legitimately hit the limit; say so plainly instead of failing silently.
  static const String _rateLimitMessage =
      'GitHub is rate-limiting this network right now. Try again in a few minutes.';

  static Future<UpdateOutcome> check(String currentVersion) async {
    final client = HttpClient()..connectionTimeout = _timeout;
    try {
      final request = await client
          .getUrl(Uri.https('api.github.com', '/repos/$repository/releases/latest'))
          .timeout(_timeout);
      request.headers
        ..set(HttpHeaders.acceptHeader, 'application/vnd.github+json')
        ..set(HttpHeaders.userAgentHeader, 'MoniTune/$currentVersion');
      final response = await request.close().timeout(_timeout);

      if (response.statusCode == 403 || response.statusCode == 429) {
        return UpdateOutcome.failed(_rateLimitMessage);
      }
      if (response.statusCode != 200) {
        return UpdateOutcome.failed('GitHub replied with status ${response.statusCode}.');
      }

      final body = await response.transform(utf8.decoder).join().timeout(_timeout);
      final decoded = jsonDecode(body);
      if (decoded is! Map<String, dynamic>) {
        return UpdateOutcome.failed('Unexpected response from GitHub.');
      }
      final tag = decoded['tag_name']?.toString();
      final url = decoded['html_url']?.toString();
      if (tag == null || tag.isEmpty || url == null) {
        return UpdateOutcome.failed('GitHub did not report a release.');
      }

      final latest = _clean(tag);
      return UpdateOutcome(
        UpdateStatus.available,
        version: latest,
        url: url,
        message: compareVersions(latest, currentVersion) > 0
            ? 'MoniTune $latest is available.'
            : 'You are on the latest version ($currentVersion).',
      );
    } on TimeoutException {
      return UpdateOutcome.failed('GitHub did not respond in time.');
    } on SocketException {
      return UpdateOutcome.failed('No network connection.');
    } on FormatException {
      return UpdateOutcome.failed('Unexpected response from GitHub.');
    } catch (_) {
      return UpdateOutcome.failed('Could not check for updates.');
    } finally {
      client.close(force: true);
    }
  }

  static String _clean(String tag) {
    var value = tag.trim();
    if (value.startsWith('v') || value.startsWith('V')) {
      value = value.substring(1);
    }
    return value;
  }
}

enum UpdateStatus { upToDate, available, failed }

class UpdateOutcome {
  const UpdateOutcome(this.status, {this.version, this.url, this.message});

  /// A check that could not complete (offline, rate limit, bad response).
  const UpdateOutcome.failed(String message)
      : this(UpdateStatus.failed, message: message);

  final UpdateStatus status;
  final String? version;
  final String? url;
  final String? message;
}

/// Compares two dotted versions numerically.
///
/// A version carrying a pre-release suffix (`1.0.0-beta`) sorts *below* the
/// same version without one, so a prerelease never reads as an update.
/// Exposed for testing: no network involved.
int compareVersions(String a, String b) {
  final left = _parse(a);
  final right = _parse(b);
  final length = left.parts.length > right.parts.length ? left.parts.length : right.parts.length;
  for (var i = 0; i < length; i++) {
    final l = i < left.parts.length ? left.parts[i] : 0;
    final r = i < right.parts.length ? right.parts[i] : 0;
    if (l != r) return l > r ? 1 : -1;
  }
  if (left.prerelease == right.prerelease) return 0;
  if (left.prerelease) return -1;
  if (right.prerelease) return 1;
  return 0;
}

_Version _parse(String value) {
  final trimmed = value.trim().replaceFirst(RegExp(r'^[vV]'), '');
  final dashIndex = trimmed.indexOf(RegExp(r'[-+ ]'));
  final core = dashIndex < 0 ? trimmed : trimmed.substring(0, dashIndex);
  final parts = <int>[];
  for (final segment in core.split('.')) {
    final digits = RegExp(r'^\d+').firstMatch(segment);
    parts.add(int.tryParse(digits?.group(0) ?? '') ?? 0);
  }
  return _Version(parts, dashIndex >= 0);
}

class _Version {
  const _Version(this.parts, this.prerelease);

  final List<int> parts;
  final bool prerelease;
}
