import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ig_clone/features/landing/domain/usecase/landing_usecase.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc({
    required LandingUsecase landingUsecase,
  })  : _landingUsecase = landingUsecase,
        super(LandingInitial()) {
    on<LandingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final LandingUsecase _landingUsecase;
}
