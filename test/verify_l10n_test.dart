import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/verify_l10n.dart';

void main() {
  group('L10nValidator Unit Tests', () {
    const validTemplateJson = '''
{
  "@@locale": "en",
  "appTitle": "MoniTune",
  "@appTitle": {
    "description": "App title"
  },
  "greeting": "Hello, {name}!",
  "revertPrompt": "Reverting in {seconds}s ({width}x{height})",
  "simple": "Plain text"
}
''';

    test('parses valid template correctly', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      expect(template.locale, 'en');
      expect(
        template.keys.keys,
        containsAll(['appTitle', 'greeting', 'revertPrompt', 'simple']),
      );
      expect(template.keys.containsKey('@@locale'), isFalse);
      expect(template.keys.containsKey('@appTitle'), isFalse);

      expect(template.keys['appTitle'], isEmpty);
      expect(template.keys['greeting'], equals({'name'}));
      expect(
        template.keys['revertPrompt'],
        equals({'seconds', 'width', 'height'}),
      );
      expect(template.keys['simple'], isEmpty);
    });

    test('detects syntax error in template', () {
      expect(
        () => L10nValidator.parseTemplate('{ invalid json'),
        throwsA(isA<FormatException>()),
      );
    });

    test('validates perfectly matching target file', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = '''
{
  "@@locale": "es",
  "appTitle": "MoniTune",
  "greeting": "¡Hola, {name}!",
  "revertPrompt": "Revirtiendo en {seconds}s ({width}x{height})",
  "simple": "Texto simple"
}
''';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isTrue);
      expect(result.missingKeys, isEmpty);
      expect(result.extraneousKeys, isEmpty);
      expect(result.placeholderMismatches, isEmpty);
      expect(result.syntaxErrors, isEmpty);
    });

    test('detects missing @@locale in target file', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = '''
{
  "appTitle": "MoniTune",
  "greeting": "¡Hola, {name}!",
  "revertPrompt": "Revirtiendo en {seconds}s ({width}x{height})",
  "simple": "Texto simple"
}
''';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isFalse);
      expect(result.syntaxErrors, anyElement(contains('@@locale')));
    });

    test('detects missing keys in target file', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = '''
{
  "@@locale": "es",
  "appTitle": "MoniTune",
  "simple": "Texto simple"
}
''';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isFalse);
      expect(result.missingKeys, unorderedEquals(['greeting', 'revertPrompt']));
    });

    test('detects extraneous keys in target file', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = '''
{
  "@@locale": "es",
  "appTitle": "MoniTune",
  "greeting": "¡Hola, {name}!",
  "revertPrompt": "Revirtiendo en {seconds}s ({width}x{height})",
  "simple": "Texto simple",
  "unknownKey": "Extra"
}
''';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isFalse);
      expect(result.extraneousKeys, equals(['unknownKey']));
    });

    test('detects placeholder mismatches in target file', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = '''
{
  "@@locale": "es",
  "appTitle": "MoniTune",
  "greeting": "¡Hola!", 
  "revertPrompt": "Revirtiendo en {seconds}s ({width}x{h})",
  "simple": "Texto simple {unexpected}"
}
''';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isFalse);
      expect(
        result.placeholderMismatches.keys,
        unorderedEquals(['greeting', 'revertPrompt', 'simple']),
      );

      // greeting: expected {name}, found {}
      expect(
        result.placeholderMismatches['greeting']!.expected,
        equals({'name'}),
      );
      expect(result.placeholderMismatches['greeting']!.found, isEmpty);

      // revertPrompt: expected {seconds, width, height}, found {seconds, width, h}
      expect(
        result.placeholderMismatches['revertPrompt']!.expected,
        equals({'seconds', 'width', 'height'}),
      );
      expect(
        result.placeholderMismatches['revertPrompt']!.found,
        equals({'seconds', 'width', 'h'}),
      );

      // simple: expected {}, found {unexpected}
      expect(result.placeholderMismatches['simple']!.expected, isEmpty);
      expect(
        result.placeholderMismatches['simple']!.found,
        equals({'unexpected'}),
      );
    });

    test('detects malformed JSON syntax in target file', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = 'not a json';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isFalse);
      expect(result.syntaxErrors, isNotEmpty);
    });

    test('validateDirectory on current lib/l10n passes with template valid and all targets valid', () {
      final report = L10nValidator.validateDirectory(Directory('lib/l10n'));
      expect(report.isValid, isTrue);
      expect(report.templateError, isNull);
      expect(report.template, isNotNull);
      expect(report.template!.locale, 'en');
      expect(report.template!.keys.length, greaterThan(50));
      expect(report.targetResults, isNotEmpty);
      expect(report.targetResults.every((r) => r.isValid), isTrue);
    });

    test(
      'validateDirectory detects errors when directory has invalid ARB file',
      () async {
        final tempDir = await Directory.systemTemp.createTemp('l10n_test_');
        try {
          final enFile = File('${tempDir.path}/app_en.arb');
          await enFile.writeAsString(validTemplateJson);

          final esFile = File('${tempDir.path}/app_es.arb');
          await esFile.writeAsString('''
{
  "@@locale": "es",
  "appTitle": "MoniTune",
  "greeting": "Hola"
}
'''); // missing revertPrompt and simple, and greeting missing {name}

          final report = L10nValidator.validateDirectory(tempDir);
          expect(report.isValid, isFalse);
          expect(report.targetResults.length, 1);
          expect(report.targetResults.first.missingKeys, contains('simple'));
          expect(
            report.targetResults.first.placeholderMismatches.containsKey(
              'greeting',
            ),
            isTrue,
          );
        } finally {
          await tempDir.delete(recursive: true);
        }
      },
    );

    test('detects @@locale mismatch with filename', () {
      final template = L10nValidator.parseTemplate(validTemplateJson);
      const targetJson = '''
{
  "@@locale": "fr",
  "appTitle": "MoniTune",
  "greeting": "¡Hola, {name}!",
  "revertPrompt": "Revirtiendo en {seconds}s ({width}x{height})",
  "simple": "Texto simple"
}
''';
      final result = L10nValidator.validateLocaleContent(
        targetJson,
        template,
        filePath: 'lib/l10n/app_es.arb',
      );
      expect(result.isValid, isFalse);
      expect(
        result.syntaxErrors,
        anyElement(
          contains(
            'Declared @@locale "fr" does not match filename locale "es"',
          ),
        ),
      );
    });

    test(
      'resolveDirectory returns custom path unconditionally without fallback',
      () {
        final customDir = L10nValidator.resolveDirectory([
          '/non/existent/path',
        ]);
        expect(customDir.path, equals('/non/existent/path'));

        final report = L10nValidator.validateDirectory(customDir);
        expect(report.isValid, isFalse);
        expect(
          report.templateError,
          contains('Directory not found: /non/existent/path'),
        );
      },
    );
  });
}
