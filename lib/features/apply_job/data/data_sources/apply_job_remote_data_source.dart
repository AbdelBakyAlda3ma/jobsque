// ignore_for_file:applyJobModel. missing_required_param, missing_required_param

import 'dart:developer';

import 'package:dio/dio.dart';
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
    ApplyJobModel applyJobModel =
        ApplyJobModel.downCasting(applyJobEntity: applyJobEntity);
    final payload = FormData.fromMap(
        // applyJobModel.copyWith(userId:applyJobModel. userId.toString()).toMap(),
        {
          'cv_file': applyJobModel.cvFile,
          'name': applyJobModel.name,
          'email': applyJobModel.email,
          'mobile': applyJobModel.mobile,
          'work_type': applyJobModel.workType,
          'other_file': await MultipartFile.fromFile(
            applyJobModel.otherFile!,
          ),
          'jobs_id': 1,
          'user_id': userId,
        });
    log(applyJobEntity.toString());
    print(applyJobModel.toString());
    await apiService.post(
      path: '/apply',
      body: payload,
    );
  }
}
