import 'package:ig_clone/features/landing/data/repositories/landing_repository_impl.dart';

class LandingUsecase {
  LandingUsecase({
    required LandingRemoteRepositoryImpl landingRemoteRepositoryImpl,
  }) : _landingRemoteRepositoryImpl = landingRemoteRepositoryImpl;

  final LandingRemoteRepositoryImpl _landingRemoteRepositoryImpl;

  Future<String> readRemoteId(){
    return _landingRemoteRepositoryImpl.remoteId();
  }
}
