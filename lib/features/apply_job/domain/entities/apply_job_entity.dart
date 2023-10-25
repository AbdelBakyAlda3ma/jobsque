// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'apply_job_entity.g.dart';

@HiveType(typeId: 4)
class ApplyJobEntity extends HiveObject {
  @HiveField(0)
  String? cvFile;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? mobile;
  @HiveField(4)
  String? workType;
  @HiveField(5)
  String? otherFile;
  @HiveField(6)
  String? jobsId;
  @HiveField(7)
  String? userId;
  @HiveField(8)
  bool? reviewed;
  @HiveField(9)
  DateTime? updatedAt;
  @HiveField(10)
  DateTime? createdAt;
  @HiveField(11)
  int? id;
  ApplyJobEntity({
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

  @override
  String toString() {
    return 'ApplyJobEntity(cvFile: $cvFile, name: $name, email: $email, mobile: $mobile, workType: $workType, otherFile: $otherFile, jobsId: $jobsId, userId: $userId, reviewed: $reviewed, updatedAt: $updatedAt, createdAt: $createdAt, id: $id)';
  }

  ApplyJobEntity copyWith({
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
    return ApplyJobEntity(
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
}
