import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ig_clone/app/routing/app_routing.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('HELLO Diaries'),
          ),
          FilledButton(
            onPressed: () => context.goNamed('signin'),
            child: const Text('Sign In'),
          ),

        ],
      ),
    );
  }
}
