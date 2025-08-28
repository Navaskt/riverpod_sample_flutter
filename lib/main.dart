import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/depentency_injection/injection.dart';
import 'core/navigation/app_router.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  getIt<AppRouter>().initialize();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
