import 'dart:convert';
import 'dart:io';

/// Information about placeholder differences for a single key.
class PlaceholderMismatch {
  final Set<String> expected;
  final Set<String> found;

  const PlaceholderMismatch({required this.expected, required this.found});

  Set<String> get missing => expected.difference(found);
  Set<String> get extra => found.difference(expected);
}

/// Represents the canonical English template (`app_en.arb`).
class ArbTemplate {
  final String filePath;
  final String locale;
  final Map<String, Set<String>> keys;

  const ArbTemplate({
    required this.filePath,
    required this.locale,
    required this.keys,
  });

  static ArbTemplate parse(String content, {String filePath = 'app_en.arb'}) {
    final dynamic decoded = jsonDecode(content);
    if (decoded is! Map<String, dynamic>) {
      throw FormatException(
        'Root of ARB file must be a JSON object: $filePath',
      );
    }

    final locale = decoded['@@locale'] as String?;
    if (locale == null || locale.trim().isEmpty) {
      throw FormatException(
        'Missing "@@locale" in canonical template: $filePath',
      );
    }

    final filename = File(filePath).uri.pathSegments
        .lastWhere((s) => s.isNotEmpty, orElse: () => '');
    final fileMatch = L10nValidator.arbFilePattern.firstMatch(filename);
    if (fileMatch != null) {
      final expectedLocale = fileMatch.group(1);
      if (expectedLocale != null && locale != expectedLocale) {
        throw FormatException(
          'Declared @@locale "$locale" does not match filename locale "$expectedLocale" in $filePath',
        );
      }
    }

    final placeholderRegex = RegExp(r'\{([a-zA-Z0-9_]+)\}');
    final keys = <String, Set<String>>{};

    for (final entry in decoded.entries) {
      final key = entry.key;
      if (key == '@@locale' || key.startsWith('@')) {
        continue;
      }
      final value = entry.value;
      if (value is! String) {
        throw FormatException(
          'Key "$key" value must be a string, got ${value.runtimeType} in $filePath',
        );
      }
      final placeholders = placeholderRegex
          .allMatches(value)
          .map((m) => m.group(1)!)
          .toSet();
      keys[key] = placeholders;
    }

    return ArbTemplate(filePath: filePath, locale: locale, keys: keys);
  }
}

/// Validation result for a single target ARB file.
class ArbFileValidation {
  final String filePath;
  final String? locale;
  final List<String> missingKeys;
  final List<String> extraneousKeys;
  final Map<String, PlaceholderMismatch> placeholderMismatches;
  final List<String> syntaxErrors;

  const ArbFileValidation({
    required this.filePath,
    this.locale,
    this.missingKeys = const [],
    this.extraneousKeys = const [],
    this.placeholderMismatches = const {},
    this.syntaxErrors = const [],
  });

  bool get isValid =>
      syntaxErrors.isEmpty &&
      missingKeys.isEmpty &&
      extraneousKeys.isEmpty &&
      placeholderMismatches.isEmpty;

  int get totalErrors =>
      syntaxErrors.length +
      missingKeys.length +
      extraneousKeys.length +
      placeholderMismatches.length;
}

/// Aggregated report of the entire validation process.
class ValidationReport {
  final Directory directory;
  final ArbTemplate? template;
  final String? templateError;
  final List<ArbFileValidation> targetResults;

  const ValidationReport({
    required this.directory,
    this.template,
    this.templateError,
    this.targetResults = const [],
  });

  bool get isValid =>
      templateError == null && targetResults.every((result) => result.isValid);
}

/// Validates ARB files against canonical template for key parity and placeholder integrity.
class L10nValidator {
  static final RegExp _placeholderRegex = RegExp(r'\{([a-zA-Z0-9_]+)\}');
  static final RegExp arbFilePattern = RegExp(r'^app_([a-zA-Z0-9_-]+)\.arb$');

  static ArbTemplate parseTemplate(
    String jsonContent, {
    String filePath = 'app_en.arb',
  }) {
    return ArbTemplate.parse(jsonContent, filePath: filePath);
  }

  static ArbFileValidation validateLocaleContent(
    String jsonContent,
    ArbTemplate template, {
    String filePath = '',
  }) {
    dynamic decoded;
    try {
      decoded = jsonDecode(jsonContent);
    } catch (e) {
      return ArbFileValidation(
        filePath: filePath,
        syntaxErrors: ['Invalid JSON syntax: $e'],
      );
    }

    if (decoded is! Map<String, dynamic>) {
      return ArbFileValidation(
        filePath: filePath,
        syntaxErrors: ['Root of ARB file must be a JSON object'],
      );
    }

    final errors = <String>[];
    final locale = decoded['@@locale'] as String?;
    if (locale == null || locale.trim().isEmpty) {
      errors.add('Missing "@@locale" property');
    } else if (filePath.isNotEmpty) {
      final filename = File(filePath).uri.pathSegments
          .lastWhere((s) => s.isNotEmpty, orElse: () => '');
      final fileMatch = arbFilePattern.firstMatch(filename);
      if (fileMatch != null) {
        final expectedLocale = fileMatch.group(1);
        if (expectedLocale != null && locale != expectedLocale) {
          errors.add(
            'Declared @@locale "$locale" does not match filename locale "$expectedLocale"',
          );
        }
      }
    }

    final targetKeys = <String, Set<String>>{};
    for (final entry in decoded.entries) {
      final key = entry.key;
      if (key == '@@locale' || key.startsWith('@')) {
        continue;
      }
      final value = entry.value;
      if (value is! String) {
        errors.add(
          'Key "$key" value must be a string (found ${value.runtimeType})',
        );
        continue;
      }
      final placeholders = _placeholderRegex
          .allMatches(value)
          .map((m) => m.group(1)!)
          .toSet();
      targetKeys[key] = placeholders;
    }

    // Missing keys (in template, but not in target)
    final missingKeys = <String>[];
    for (final expectedKey in template.keys.keys) {
      if (!targetKeys.containsKey(expectedKey)) {
        missingKeys.add(expectedKey);
      }
    }
    missingKeys.sort();

    // Extraneous keys (in target, but not in template)
    final extraneousKeys = <String>[];
    for (final targetKey in targetKeys.keys) {
      if (!template.keys.containsKey(targetKey)) {
        extraneousKeys.add(targetKey);
      }
    }
    extraneousKeys.sort();

    // Placeholder mismatches
    final placeholderMismatches = <String, PlaceholderMismatch>{};
    for (final entry in targetKeys.entries) {
      final key = entry.key;
      if (!template.keys.containsKey(key)) continue;

      final expectedPlaceholders = template.keys[key]!;
      final actualPlaceholders = entry.value;

      final isExactMatch =
          expectedPlaceholders.length == actualPlaceholders.length &&
          expectedPlaceholders.containsAll(actualPlaceholders);

      if (!isExactMatch) {
        placeholderMismatches[key] = PlaceholderMismatch(
          expected: expectedPlaceholders,
          found: actualPlaceholders,
        );
      }
    }

    return ArbFileValidation(
      filePath: filePath,
      locale: locale,
      missingKeys: missingKeys,
      extraneousKeys: extraneousKeys,
      placeholderMismatches: placeholderMismatches,
      syntaxErrors: errors,
    );
  }

  static ValidationReport validateDirectory(Directory l10nDir) {
    if (!l10nDir.existsSync()) {
      return ValidationReport(
        directory: l10nDir,
        templateError: 'Directory not found: ${l10nDir.path}',
      );
    }

    final templateFile = File('${l10nDir.path}/app_en.arb');
    if (!templateFile.existsSync()) {
      return ValidationReport(
        directory: l10nDir,
        templateError: 'Canonical template not found: ${templateFile.path}',
      );
    }

    ArbTemplate template;
    try {
      final content = templateFile.readAsStringSync();
      template = parseTemplate(content, filePath: templateFile.path);
    } catch (e) {
      return ValidationReport(
        directory: l10nDir,
        templateError:
            'Error parsing canonical template (${templateFile.path}): $e',
      );
    }

    final targetFiles = <File>[];
    for (final entity in l10nDir.listSync()) {
      if (entity is! File) continue;
      final fileName = entity.uri.pathSegments.lastWhere(
        (s) => s.isNotEmpty,
        orElse: () => '',
      );
      if (fileName == 'app_en.arb') continue;
      if (arbFilePattern.hasMatch(fileName)) {
        targetFiles.add(entity);
      }
    }

    targetFiles.sort((a, b) => a.path.compareTo(b.path));

    final targetResults = <ArbFileValidation>[];
    for (final file in targetFiles) {
      try {
        final content = file.readAsStringSync();
        targetResults.add(
          validateLocaleContent(content, template, filePath: file.path),
        );
      } catch (e) {
        targetResults.add(
          ArbFileValidation(
            filePath: file.path,
            syntaxErrors: ['Failed to read file: $e'],
          ),
        );
      }
    }

    return ValidationReport(
      directory: l10nDir,
      template: template,
      targetResults: targetResults,
    );
  }

  static Directory resolveDirectory(List<String> args) {
    if (args.isNotEmpty) {
      return Directory(args.first);
    }

    const defaultDir = 'lib/l10n';
    final dir = Directory(defaultDir);
    if (dir.existsSync()) return dir;

    // Try relative to tool/ location
    final scriptRelative = File(Platform.script.toFilePath()).parent.parent;
    final fallbackDir = Directory('${scriptRelative.path}/lib/l10n');
    if (fallbackDir.existsSync()) return fallbackDir;

    return Directory(defaultDir);
  }
}

class _Ansi {
  final bool enabled;
  const _Ansi(this.enabled);

  String green(String text) => enabled ? '\x1B[32m$text\x1B[0m' : text;
  String red(String text) => enabled ? '\x1B[31m$text\x1B[0m' : text;
  String yellow(String text) => enabled ? '\x1B[33m$text\x1B[0m' : text;
  String bold(String text) => enabled ? '\x1B[1m$text\x1B[0m' : text;
}

void printReport(
  ValidationReport report, {
  required IOSink sink,
  bool? useColor,
}) {
  final bool enableColor =
      useColor ?? (stdout.hasTerminal && stdout.supportsAnsiEscapes);
  final ansi = _Ansi(enableColor);

  sink.writeln(ansi.bold('=== ARB Parity & Integrity Validator ==='));

  if (report.templateError != null) {
    sink.writeln(
      ansi.red('✗ Canonical template error: ${report.templateError}'),
    );
    sink.writeln(ansi.red('Verification failed!'));
    return;
  }

  final template = report.template!;
  sink.writeln(
    '${ansi.green('✓')} Canonical template: ${template.filePath} (${template.locale}) [${template.keys.length} keys]',
  );

  if (report.targetResults.isEmpty) {
    sink.writeln(
      ansi.yellow(
        'ℹ No additional target catalogs found in ${report.directory.path} (0 target catalogs checked).',
      ),
    );
    sink.writeln('${ansi.green('✓')} Template valid and self-consistent.');
    return;
  }

  int failedCatalogs = 0;
  for (final result in report.targetResults) {
    if (result.isValid) {
      sink.writeln(
        '${ansi.green('✓')} ${result.filePath} (${result.locale}): all ${template.keys.length} keys match',
      );
    } else {
      failedCatalogs++;
      sink.writeln(
        '${ansi.red('✗')} ${result.filePath} (${result.locale ?? 'unknown'}): ${result.totalErrors} issue(s) detected:',
      );

      if (result.syntaxErrors.isNotEmpty) {
        sink.writeln('  Syntax & metadata errors:');
        for (final error in result.syntaxErrors) {
          sink.writeln('    - $error');
        }
      }

      if (result.missingKeys.isNotEmpty) {
        sink.writeln('  Missing keys (${result.missingKeys.length}):');
        for (final key in result.missingKeys) {
          sink.writeln('    - $key');
        }
      }

      if (result.extraneousKeys.isNotEmpty) {
        sink.writeln('  Extraneous keys (${result.extraneousKeys.length}):');
        for (final key in result.extraneousKeys) {
          sink.writeln('    - $key');
        }
      }

      if (result.placeholderMismatches.isNotEmpty) {
        sink.writeln(
          '  Placeholder mismatches (${result.placeholderMismatches.length}):',
        );
        for (final entry in result.placeholderMismatches.entries) {
          final key = entry.key;
          final mismatch = entry.value;
          final expStr = mismatch.expected.isEmpty
              ? '(none)'
              : mismatch.expected.map((s) => '{$s}').join(', ');
          final foundStr = mismatch.found.isEmpty
              ? '(none)'
              : mismatch.found.map((s) => '{$s}').join(', ');
          sink.writeln('    - "$key": expected $expStr, found $foundStr');
        }
      }
    }
  }

  sink.writeln();
  if (failedCatalogs == 0) {
    sink.writeln(
      ansi.green(
        'SUCCESS: All ${report.targetResults.length} target catalog(s) passed parity & placeholder checks!',
      ),
    );
  } else {
    sink.writeln(
      ansi.red(
        'FAILURE: $failedCatalogs of ${report.targetResults.length} target catalog(s) failed validation.',
      ),
    );
  }
}

void main(List<String> args) {
  final l10nDir = L10nValidator.resolveDirectory(args);
  final report = L10nValidator.validateDirectory(l10nDir);

  printReport(report, sink: stdout);

  if (!report.isValid) {
    exit(1);
  }
  exit(0);
}
