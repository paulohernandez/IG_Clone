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
    on<SignInButtonTappedEvent>((event, emit) async {
      try {
        await _signInUsecase.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(SignInLoaded());
      } catch (e) {
        emit(const SignInError(message: 'Invalid credentials'));
      }
    });
  }

  final SignInUsecase _signInUsecase;
}
