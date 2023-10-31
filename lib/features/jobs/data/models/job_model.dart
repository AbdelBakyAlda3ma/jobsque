import 'dart:convert';

import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class JobModel extends JobEntity {
  JobModel({
    super.id,
    super.name,
    super.image,
    super.jobTimeType,
    super.jobType,
    super.jobLevel,
    super.jobDescription,
    super.jobSkill,
    super.compName,
    super.compEmail,
    super.compWebsite,
    super.aboutCompany,
    super.location,
    super.salary,
    super.favorites,
    super.expired,
    super.createdAt,
    super.updatedAt,
  });
  factory JobModel.fromMap(Map<String, dynamic> data) => JobModel(
        id: data['id'] as int,
        name: data['name'] as String,
        image: data['image'] as String,
        jobTimeType: data['job_time_type'] as String,
        jobType: data['job_type'] as String,
        jobLevel: data['job_level'] as String,
        jobDescription: data['job_description'] as String,
        jobSkill: data['job_skill'] as String,
        compName: data['comp_name'] as String,
        compEmail: data['comp_email'] as String,
        compWebsite: data['comp_website'] as String,
        aboutCompany: data['about_comp'] as String,
        location: data['location'] as String,
        salary: data['salary'] as String,
        favorites: data['favorites'] as int?,
        expired: data['expired'] as int?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'image': image,
        'job_time_type': jobTimeType,
        'job_type': jobType,
        'job_level': jobLevel,
        'job_description': jobDescription,
        'job_skill': jobSkill,
        'comp_name': compName,
        'comp_email': compEmail,
        'comp_website': compWebsite,
        'about_comp': aboutCompany,
        'location': location,
        'salary': salary,
        'favorites': favorites,
        'expired': expired,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [JobModel].
  factory JobModel.fromJson(String data) {
    return JobModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [JobModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
