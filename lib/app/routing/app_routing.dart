import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ig_clone/features/landing/presentation/landing_page.dart';

class AppRouting {
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LandingPage();
        },
      ),
    ],
  );
}
