import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';

class ApplyJobModel extends ApplyJobEntity {
  ApplyJobModel({
    super.cvFile,
    super.name,
    super.email,
    super.mobile,
    super.workType,
    super.otherFile,
    super.jobsId,
    super.userId,
    super.reviewed,
    super.updatedAt,
    super.createdAt,
    super.id,
  });

  factory ApplyJobModel.fromMap(Map<String, dynamic> data) => ApplyJobModel(
        cvFile: data['cv_file'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        mobile: data['mobile'] as String?,
        workType: data['work_type'] as String?,
        otherFile: data['other_file'] as String?,
        jobsId: data['jobs_id'] as String?,
        userId: data['user_id'] as String?,
        reviewed: data['reviewed'] as bool?,
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        id: data['id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'cv_file': cvFile,
        'name': name,
        'email': email,
        'mobile': mobile,
        'work_type': workType,
        'other_file': MultipartFile.fromFile(
          otherFile!,
        ),
        'jobs_id': jobsId,
        'user_id': userId,
        'reviewed': reviewed,
        'updated_at': updatedAt?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ApplyJobModel].
  factory ApplyJobModel.fromJson(String data) {
    return ApplyJobModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ApplyJobModel] to a JSON string.
  String toJson() => json.encode(toMap());

  factory ApplyJobModel.downCasting({required ApplyJobEntity applyJobEntity}) {
    return ApplyJobModel(
      cvFile: applyJobEntity.cvFile,
      name: applyJobEntity.name,
      email: applyJobEntity.email,
      mobile: applyJobEntity.mobile,
      workType: applyJobEntity.workType,
      otherFile: applyJobEntity.otherFile,
      jobsId: applyJobEntity.jobsId,
      userId: applyJobEntity.userId,
      reviewed: applyJobEntity.reviewed,
      updatedAt: applyJobEntity.updatedAt,
      createdAt: applyJobEntity.createdAt,
      id: applyJobEntity.id,
    );
  }
}
