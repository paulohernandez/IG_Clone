import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ig_clone/features/landing/presentation/bloc/landing_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LandingBloc, LandingState>(
        listener: (context, state) {
          if(state is LandingLoaded){
            context.goNamed('home');
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('HELLO  MEMOIRIST'),
            ),
            FilledButton(
              onPressed: () =>
                  context.read<LandingBloc>().add(LandingInitEvent()),
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
