// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';

abstract class ExperienceRemoteDataSource {
  Future<ProfileEntity> addExperience({
    required ProfileModel profileWithExperience,
  });
}

class ExperienceRemoteDataSourceImpl extends ExperienceRemoteDataSource {
  final ApiService apiService;

  ExperienceRemoteDataSourceImpl({
    required this.apiService,
  });
  @override
  Future<ProfileEntity> addExperience({
    required ProfileModel profileWithExperience,
  }) async {
    var profileWithEducationData = await apiService.put(
      path: '/user/profile/edit',
      queryParameters: profileWithExperience.toMap(),
    );
    var updatedProfile = ProfileModel.fromMap(profileWithEducationData['data']);
    return updatedProfile;
  }
}
