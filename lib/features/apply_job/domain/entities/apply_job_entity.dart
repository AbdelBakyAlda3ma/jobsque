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
}
