import 'package:ig_clone/features/sign_in/data/repositories/sign_in_repository_impl.dart';

class SignInUsecase {
  SignInUsecase({
    required SignInRemoteRepositoryImpl signInRemoteRepositoryImpl,
  }) : _signInRemoteRepositoryImpl = signInRemoteRepositoryImpl;

  final SignInRemoteRepositoryImpl _signInRemoteRepositoryImpl;

  Future<String> readRemoteId(){
    return _signInRemoteRepositoryImpl.remoteId();
  }
}
