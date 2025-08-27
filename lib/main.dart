import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dio/dio.dart';

import 'feature/home/data/models/joke_model.dart';
import 'feature/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeView());
  }
}

final dio = Dio();

Future<Joke> fetchRandomJoke() async {
  // Fetching a random joke from a public API
  final response = await dio.get<Map<String, Object?>>(
    'https://official-joke-api.appspot.com/random_joke',
  );

  return Joke.fromJson(response.data!);
}

final randomJokeProvider = FutureProvider<Joke>((ref) async {
  // Using the fetchRandomJoke function to get a random joke
  return fetchRandomJoke();
});
