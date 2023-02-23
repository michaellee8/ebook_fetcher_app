import '../../../../utils/semaphore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_fetching_semaphore.g.dart';

@riverpod
Semaphore appFetchingSemaphore(AppFetchingSemaphoreRef ref) {
  return Semaphore(10);
}
