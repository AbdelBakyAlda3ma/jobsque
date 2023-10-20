// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';

abstract class EducationRemoteDataSource {
  Future<ProfileEntity> addEducation(
      {required ProfileModel profileWitheducation});
}

class EducationRemoteDataSourceImpl extends EducationRemoteDataSource {
  ApiService apiService;
  EducationRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ProfileEntity> addEducation(
      {required ProfileModel profileWitheducation}) async {
    var profileWithEducationData = await apiService.put(
      path: '/user/profile/edit',
      queryParameters: profileWitheducation.toMap(),
    );
    var updatedProfile = ProfileModel.fromMap(profileWithEducationData['data']);
    return updatedProfile;
  }
}
