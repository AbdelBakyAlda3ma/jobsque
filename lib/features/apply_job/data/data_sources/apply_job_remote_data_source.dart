// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/apply_job/data/models/apply_job_model.dart';

abstract class ApplyJobRemoteDataSource {
  Future<void> applyJob({
    required ApplyJobModel applyJobModel,
  });
}

class ApplyJobRemoteDataSourceImpl extends ApplyJobRemoteDataSource {
  ApiService apiService;
  ApplyJobRemoteDataSourceImpl({required this.apiService});

  @override
  Future<void> applyJob({
    required ApplyJobModel applyJobModel,
  }) async {
    await apiService.post(
      path: '/apply/${applyJobModel.userId}',
      body: applyJobModel.toMap(),
    );
  }
}
