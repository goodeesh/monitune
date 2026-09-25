import 'package:flutter_test/flutter_test.dart';
import 'package:monitune/services/update_checker.dart';

void main() {
  group('compareVersions', () {
    test('orders plain releases numerically, not lexically', () {
      expect(compareVersions('1.0.10', '1.0.9'), greaterThan(0));
      expect(compareVersions('1.10.0', '1.9.0'), greaterThan(0));
      expect(compareVersions('2.0.0', '1.99.99'), greaterThan(0));
      expect(compareVersions('1.0.1', '1.0.0'), greaterThan(0));
      expect(compareVersions('1.0.0', '1.0.1'), lessThan(0));
      expect(compareVersions('1.0.0', '1.0.0'), 0);
    });

    test('tolerates a v prefix and differing lengths', () {
      expect(compareVersions('v1.0.0', '1.0.0'), 0);
      expect(compareVersions('1.0', '1.0.0'), 0);
      expect(compareVersions('1.1', '1.0.9'), greaterThan(0));
    });

    test('a prerelease sorts below its final release', () {
      expect(compareVersions('1.0.0-beta', '1.0.0'), lessThan(0));
      expect(compareVersions('1.0.0', '1.0.0-rc1'), greaterThan(0));
      expect(compareVersions('1.0.0-rc1', '1.0.0-rc1'), 0);
    });

    test('unparsable segments do not throw', () {
      expect(compareVersions('1.0.x', '1.0.0'), 0);
      expect(compareVersions('', '0.0.1'), lessThan(0));
    });

    test('the outcome carries a download url when a release exists', () {
      const outcome = UpdateOutcome(
        UpdateStatus.available,
        version: '1.1.0',
        url: 'https://github.com/goodeesh/monitune/releases/tag/v1.1.0',
        message: 'MoniTune 1.1.0 is available.',
      );
      expect(outcome.status, UpdateStatus.available);
      expect(outcome.url, contains('releases/tag/'));
    });
  });
}
