import 'package:ig_clone/features/landing/data/sources/landing_remote_data_source.dart';
import 'package:ig_clone/features/landing/domain/repositories/landing_remote_repository.dart';

class LandingRemoteRepositoryImpl implements LandingRemoteRepository {
  LandingRemoteRepositoryImpl({
    required LandingRemoteDatasource landingRemoteDatasource,
  }) : _landingRemoteDatasource = landingRemoteDatasource;

  final LandingRemoteDatasource _landingRemoteDatasource;
  @override
  Future<String> remoteId() {
    return Future.value(_landingRemoteDatasource.remoteId);
  }

  @override
  bool checkSession() {
    return _landingRemoteDatasource.checkSession();
  }
}
