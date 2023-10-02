import 'dart:convert';

import 'package:equatable/equatable.dart';

class ApplyJobModel extends Equatable {
  final String? cvFile;
  final String? name;
  final String? email;
  final String? mobile;
  final String? workType;
  final String? otherFile;
  final String? jobsId;
  final String? userId;
  final bool? reviewed;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  final int? id;

  const ApplyJobModel({
    this.cvFile,
    this.name,
    this.email,
    this.mobile,
    this.workType,
    this.otherFile,
    this.jobsId,
    this.userId,
    this.reviewed,
    this.updatedAt,
    this.createdAt,
    this.id,
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
        'other_file': otherFile,
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

  ApplyJobModel copyWith({
    String? cvFile,
    String? name,
    String? email,
    String? mobile,
    String? workType,
    String? otherFile,
    String? jobsId,
    String? userId,
    bool? reviewed,
    DateTime? updatedAt,
    DateTime? createdAt,
    int? id,
  }) {
    return ApplyJobModel(
      cvFile: cvFile ?? this.cvFile,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      workType: workType ?? this.workType,
      otherFile: otherFile ?? this.otherFile,
      jobsId: jobsId ?? this.jobsId,
      userId: userId ?? this.userId,
      reviewed: reviewed ?? this.reviewed,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      cvFile,
      name,
      email,
      mobile,
      workType,
      otherFile,
      jobsId,
      userId,
      reviewed,
      updatedAt,
      createdAt,
      id,
    ];
  }
}
