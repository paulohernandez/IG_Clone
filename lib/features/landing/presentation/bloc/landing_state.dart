part of 'landing_bloc.dart';

sealed class LandingState extends Equatable {
  const LandingState();

  @override
  List<Object?> get props => [];
}

final class LandingInitial extends LandingState {}

class LandingLoaded extends LandingState {}

class LandingError extends LandingState {}
