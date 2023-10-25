import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';

bool isProfileCompleted() {
  var profile = ProfileLocalDataSourceImpl().getProfile();
  return profile!.isCompleted;
}
