import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:monitune/version.dart';

void main() {
  test('AppVersion.current matches pubspec.yaml', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final match = RegExp(r'^version:\s*(\S+)\s*$', multiLine: true).firstMatch(pubspec);
    expect(match, isNotNull, reason: 'no version: line in pubspec.yaml');
    final declared = match!.group(1)!;
    final parts = declared.split('+');
    // pubspec carries "1.0.1+16"; the app shows only the name part.
    expect(AppVersion.current, parts.first,
        reason: 'lib/version.dart is out of sync with pubspec.yaml');
  });
}
