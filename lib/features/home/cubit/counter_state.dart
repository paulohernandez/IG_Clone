part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  const CounterState();
}

final class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}
