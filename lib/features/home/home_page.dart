import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Diaries',
        ),
        actions: [
          FilledButton(
            style: FilledButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Column(),
    );
  }
}
