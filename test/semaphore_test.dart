import 'package:ebook_fetcher_app/src/utils/semaphore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  group('Semaphore limits parallel execution', () {
    testSemaphore(int n, int size, Duration minTime, Duration maxTime) async {
      final semaphore = Semaphore(size);
      final stopwatch = Stopwatch();
      stopwatch.start();
      await Future.wait(List.generate(n, (index) => null).map((e) async {
        await semaphore.acquire();
        await Future.delayed(const Duration(seconds: 1));
        semaphore.release();
      }));
      stopwatch.stop();
      expect(stopwatch.elapsed, greaterThanOrEqualTo(minTime));
      expect(stopwatch.elapsed, lessThanOrEqualTo(maxTime));
    }

    test('when n < size', () async {
      await testSemaphore(2, 3, const Duration(milliseconds: 500),
          const Duration(milliseconds: 1500));
    });

    test('when n == size', () async {
      await testSemaphore(3, 3, const Duration(milliseconds: 500),
          const Duration(milliseconds: 1500));
    });

    test('when n > size', () async {
      await testSemaphore(4, 3, const Duration(milliseconds: 1500),
          const Duration(milliseconds: 2500));
    });
  });
}
