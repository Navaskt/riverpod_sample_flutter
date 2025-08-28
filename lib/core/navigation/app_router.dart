import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:tiverpod_sample_flutter/core/navigation/app_router_path.dart';
import 'package:tiverpod_sample_flutter/feature/home/presentation/screens/home_screen.dart';
import 'package:tiverpod_sample_flutter/feature/login/presentation/login_screen.dart';

@singleton
class AppRouter {
  late final GoRouter _router;
  GoRouter get router => _router;

  void initialize() {
    _router = GoRouter(routes: _buildRoutes());
  }

  void dispose() {
    _router.dispose();
  }

  List<GoRoute> _buildRoutes() {
    return [
      GoRoute(
        path: AppRouterPaths.home,
        builder: (context, state) {
          return const HomeView();
        },
        routes: [
          GoRoute(
            path: AppRouterPaths.login,
            builder: (context, state) {
              final data = state.extra as String? ?? '';
              return LoginScreen(data: data);
            },
          ),
        ],
      ),
    ];
  }
}
