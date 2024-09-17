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
    on<LandingInitEvent>((event, emit) {
      final isExpired = _landingUsecase.checkSession();

      if (!isExpired) {
        emit(LandingLoaded());
      } else {
        emit(LandingError());
      }
    });
  }
  final LandingUsecase _landingUsecase;
}
