import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
