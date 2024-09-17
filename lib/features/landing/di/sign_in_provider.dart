import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ig_clone/features/landing/data/repositories/landing_repository_impl.dart';
import 'package:ig_clone/features/landing/data/sources/landing_remote_data_source.dart';
import 'package:ig_clone/features/landing/domain/usecase/landing_usecase.dart';
import 'package:ig_clone/features/landing/presentation/bloc/landing_bloc.dart';
import 'package:provider/provider.dart';

class LandingProvider extends StatelessWidget {
  const LandingProvider({
    required Widget child,
    super.key,
  }) : _child = child;

  final Widget _child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LandingRemoteDatasource>(
          create: (context) => LandingRemoteDatasource(
            supabaseClient: context.read(),
          ),
        ),
        Provider<LandingUsecase>(
          create: (context) => LandingUsecase(
            landingRemoteRepositoryImpl: LandingRemoteRepositoryImpl(
              landingRemoteDatasource: context.read<LandingRemoteDatasource>(),
            ),
          ),
        ),
        BlocProvider<LandingBloc>(
          create: (context) =>
              LandingBloc(landingUsecase: context.read<LandingUsecase>()),
        ),
      ],
      child: _child,
    );
  }
}
