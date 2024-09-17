part of 'sign_in_bloc.dart';

sealed class SignInState extends Equatable {
  const SignInState();
  @override
  List<Object?> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInLoaded extends SignInState {}

class SignInError extends SignInState {
  const SignInError({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}
