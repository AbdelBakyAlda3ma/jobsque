// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/features/apply_job/data/models/apply_job_model.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';

abstract class ApplyJobRemoteDataSource {
  Future<void> applyJob({
    required ApplyJobEntity applyJobEntity,
  });
}

class ApplyJobRemoteDataSourceImpl extends ApplyJobRemoteDataSource {
  ApiService apiService;
  ApplyJobRemoteDataSourceImpl({required this.apiService});

  @override
  Future<void> applyJob({
    required ApplyJobEntity applyJobEntity,
  }) async {
    var userId = JobsqueSharedPrefrences.getInt(kUserID);
    applyJobEntity as ApplyJobModel;
    await apiService.post(
      path: '/apply/$userId',
      body: applyJobEntity.copyWith(userId: userId.toString()).toMap(),
    );
  }
}
