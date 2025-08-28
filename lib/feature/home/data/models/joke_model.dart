import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_model.freezed.dart';
part 'joke_model.g.dart'; // only if you use JSON

@freezed
abstract class Joke with _$Joke {
  const factory Joke({
    required String type,
    required String setup,
    required String punchline,
    required int id,
  }) = _Joke;

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
