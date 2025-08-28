import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tiverpod_sample_flutter/core/navigation/app_router_path.dart';

import '../controller/jokedata_notifier.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  build(BuildContext context, WidgetRef ref) {
    final joke = ref.watch(jokedataNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Sample Riverpod Application')),
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            joke.when(
              loading: () {
                return const CircularProgressIndicator();
              },
              data: (joke) {
                return SelectableText(
                  '${joke.setup}\n\n${joke.punchline}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                );
              },
              error: (error, stackTrace) {
                return Container();
              },
            ),

            Positioned(
              bottom: 20,
              child: ElevatedButton(
                onPressed: () {
                  context.push(AppRouterPaths.login, extra: "Go to HomeScreen");
                },

                // ref.read(jokedataNotifierProvider.notifier).getJoke(),
                child: const Text('Get another joke'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
