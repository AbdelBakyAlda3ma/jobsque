import 'package:hive/hive.dart';

part 'job_entity.g.dart';

@HiveType(typeId: 6)
class JobEntity extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? image;
  @HiveField(2)
  String? jobTimeType;
  @HiveField(3)
  String? jobType;
  @HiveField(4)
  String? jobLevel;
  @HiveField(5)
  String? jobDescription;
  @HiveField(6)
  String? jobSkill;
  @HiveField(7)
  String? compName;
  @HiveField(8)
  String? compEmail;
  @HiveField(9)
  String? compWebsite;
  @HiveField(10)
  String? aboutCompany;
  @HiveField(11)
  String? location;
  @HiveField(12)
  String? salary;
  @HiveField(13)
  int? id;
  @HiveField(14)
  int? favorites;
  @HiveField(15)
  int? expired;
  @HiveField(16)
  DateTime? createdAt;
  @HiveField(17)
  DateTime? updatedAt;
  @HiveField(18)
  bool isSaved;
  JobEntity({
    this.name,
    this.image,
    this.jobTimeType,
    this.jobType,
    this.jobLevel,
    this.jobDescription,
    this.jobSkill,
    this.compName,
    this.compEmail,
    this.compWebsite,
    this.aboutCompany,
    this.location,
    this.salary,
    this.id,
    this.favorites,
    this.createdAt,
    this.updatedAt,
    this.expired,
    this.isSaved = false,
  });
}
