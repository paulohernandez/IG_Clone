part of 'landing_bloc.dart';

sealed class LandingState extends Equatable {
  const LandingState();
}

final class LandingInitial extends LandingState {
  @override
  List<Object> get props => [];
}
