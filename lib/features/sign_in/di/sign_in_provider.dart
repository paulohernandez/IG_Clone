import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ig_clone/features/sign_in/data/repositories/sign_in_repository_impl.dart';
import 'package:ig_clone/features/sign_in/data/sources/sign_in_remote_data_source.dart';
import 'package:ig_clone/features/sign_in/domain/usecase/sign_in_usecase.dart';
import 'package:ig_clone/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:provider/provider.dart';

class SignInProvider extends StatelessWidget {
  const SignInProvider({
    required Widget child,
    super.key,
  }) : _child = child;

  final Widget _child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SignInRemoteDatasource>(
          create: (context) => SignInRemoteDatasource(
            supabaseClient: context.read(),
          ),
        ),
        Provider<SignInUsecase>(
          create: (context) => SignInUsecase(
            signInRemoteRepositoryImpl: SignInRemoteRepositoryImpl(
              signInRemoteDatasource: context.read<SignInRemoteDatasource>(),
            ),
          ),
        ),
        BlocProvider<SignInBloc>(
          create: (context) =>
              SignInBloc(signInUsecase: context.read<SignInUsecase>()),
        ),
      ],
      child: _child,
    );
  }
}
