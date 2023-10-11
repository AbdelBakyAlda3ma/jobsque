// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/education/data/models/education_model.dart';
import 'package:jobseque/features/education/domain/entities/education_entity.dart';

abstract class EducationRemoteDataSource {
  Future<EducationEntity> addEducation({
    required EducationModel education,
  });
}

class EducationRemoteDataSourceImpl extends EducationRemoteDataSource {
  ApiService apiService;
  EducationRemoteDataSourceImpl({required this.apiService});

  @override
  Future<EducationEntity> addEducation(
      {required EducationModel education}) async {
    var educationData = await apiService.post(
      path: '/education',
      queryParameters: education.toMap(),
    );
    var educationModel = EducationModel.fromMap(educationData);
    return educationModel;
  }
}
