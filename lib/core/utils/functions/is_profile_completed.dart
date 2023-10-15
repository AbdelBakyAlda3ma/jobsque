import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';

bool isProfileCompleted() {
  ProfileLocalDataSource profileLocalDataSource = ProfileLocalDataSourceImpl();
  var profile = profileLocalDataSource.getProfile();
  return profile.isCompleted;
}
