abstract class SignInRemoteRepository {
  Future<String> remoteId();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
