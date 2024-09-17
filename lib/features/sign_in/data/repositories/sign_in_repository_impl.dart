import 'package:ig_clone/features/sign_in/data/sources/sign_in_remote_data_source.dart';
import 'package:ig_clone/features/sign_in/domain/repositories/sign_in_remote_repository.dart';

class SignInRemoteRepositoryImpl implements SignInRemoteRepository {
  SignInRemoteRepositoryImpl({
    required SignInRemoteDatasource signInRemoteDatasource,
  }) : _signInRemoteDatasource = signInRemoteDatasource;

  final SignInRemoteDatasource _signInRemoteDatasource;
  @override
  Future<String> remoteId() {
    return Future.value(_signInRemoteDatasource.remoteId);
  }
}
