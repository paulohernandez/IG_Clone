import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
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
              )),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
