import 'dart:collection' show Queue;
import 'dart:async';

class _InvalidArgumentException implements Exception {
  _InvalidArgumentException(this._message);

  final String _message;

  String get message => 'invalid argument: $_message';
}

/// Provide an implementation of Semaphore in a single-threaded environment.
/// Intended for controlling Future-based concurrency.
class Semaphore {
  Semaphore([this.size = 1]) {
    if (size <= 0) {
      throw _InvalidArgumentException('invalid n: $n');
    }
  }

  final int size;
  int n = 0;

  Queue<Completer<void>> completers = Queue();

  Future<void> acquire() {
    if (n < size) {
      n++;
      return Future.value();
    } else {
      final completer = Completer<void>();
      completers.addLast(completer);
      return completer.future;
    }
  }

  void release() {
    n--;
    if (completers.isNotEmpty && n < size) {
      n++;
      final completer = completers.removeFirst();
      completer.complete();
    }
  }
}
