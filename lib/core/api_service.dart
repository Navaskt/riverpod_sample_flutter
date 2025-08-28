import 'package:dio/dio.dart';

import '../feature/home/data/models/joke_model.dart';


class JokeService {
  final Dio _dio = Dio();

  Future<Joke> getRandomJoke() async {
    final response = await _dio.get("https://official-joke-api.appspot.com/random_joke");
    return Joke.fromJson(response.data);
  }
}
