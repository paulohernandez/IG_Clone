import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ig_clone/features/home/home_page.dart';
import 'package:ig_clone/features/landing/di/landing_provider.dart';
import 'package:ig_clone/features/landing/presentation/landing_page.dart';
import 'package:ig_clone/features/sign_in/presentation/sign_in_page.dart';

class AppRouting {
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LandingProvider(child: LandingPage());
        },
        routes: <GoRoute>[
          GoRoute(
            name: 'signin',
            path: 'signin',
            builder: (BuildContext context, GoRouterState state) {
              return const SignInPage();
            },
          ),
          GoRoute(
            name: 'home',
            path: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
        ],
      ),
    ],
  );
}
