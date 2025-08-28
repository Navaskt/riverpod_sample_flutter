import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tiverpod_sample_flutter/feature/home/data/models/joke_model.dart';

import '../../../../core/api_service.dart';

part 'jokedata_notifier.g.dart';

@riverpod
class JokedataNotifier extends _$JokedataNotifier {
  final _service = JokeService();
  // Step 1: Initial State
  @override
  Future<Joke> build() async {
    // This sets the initial state of your notifier
    return _service.getRandomJoke();
  }

  // Step 2: Add methods to update state
  Future<void> getJoke() async {
    try {
      state = const AsyncLoading();
      final joke = await _service.getRandomJoke();
      state = AsyncData(joke);
    } catch (e, trace) {
      state = AsyncError(e, trace);
    }
  }
}
