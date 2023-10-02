// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'experience_entity.g.dart';

@HiveType(typeId: 2)
class ExperienceEntity extends HiveObject {
  @HiveField(0)
  String? userId;
  @HiveField(1)
  String? postion;
  @HiveField(2)
  String? typeWork;
  @HiveField(3)
  String? compName;
  @HiveField(4)
  String? location;
  @HiveField(5)
  String? start;
  @HiveField(6)
  String? updatedAt;
  @HiveField(7)
  String? createdAt;
  @HiveField(8)
  int? id;
  @HiveField(9)
  bool? isCurrentlyWorkingInThisRole;
  ExperienceEntity({
    this.userId,
    this.postion,
    this.typeWork,
    this.compName,
    this.location,
    this.start,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.isCurrentlyWorkingInThisRole,
  });
}
