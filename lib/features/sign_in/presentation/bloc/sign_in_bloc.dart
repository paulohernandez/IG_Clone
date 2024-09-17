import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ig_clone/features/sign_in/domain/usecase/sign_in_usecase.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required SignInUsecase signInUsecase,
  })  : _signInUsecase = signInUsecase,
        super(SignInInitial()) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final SignInUsecase _signInUsecase;
}
