// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/experience/data/models/experience_model.dart';
import 'package:jobseque/features/experience/domain/entities/experience_entity.dart';

abstract class ExperienceRemoteDataSource {
  Future<ExperienceEntity> addExperience({
    required ExperienceModel experience,
  });
}

class ExperienceRemoteDataSourceImpl extends ExperienceRemoteDataSource {
  final ApiService apiService;

  ExperienceRemoteDataSourceImpl({
    required this.apiService,
  });
  @override
  Future<ExperienceEntity> addExperience({
    required ExperienceModel experience,
  }) async {
    var experienceData = await apiService.post(
      path: '/education',
      queryParameters: experience.toMap(),
    );
    var experienceModel = ExperienceModel.fromMap(experienceData);
    return experienceModel;
  }
}
