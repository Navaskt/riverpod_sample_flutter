import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiverpod_sample_flutter/feature/home/data/models/joke_model.dart';

part 'jokedata_state.freezed.dart';

@freezed
abstract class JokeState with _$JokeState {
  const factory JokeState.initial() = _Initial;
  const factory JokeState.loading() = _Loading;
  const factory JokeState.data(Joke joke) = _Data;
  const factory JokeState.error(String message) = _Error;
}
