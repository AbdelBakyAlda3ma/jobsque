// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'education_entity.g.dart';

@HiveType(typeId: 1)
class EducationEntity extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? universty;
  @HiveField(2)
  String? title;
  @HiveField(3)
  String? start;
  @HiveField(4)
  String? end;
  @HiveField(5)
  int? userId;
  @HiveField(6)
  String? profileId;
  @HiveField(7)
  String? createdAt;
  @HiveField(8)
  String? updatedAt;
  EducationEntity({
    this.id,
    this.universty,
    this.title,
    this.start,
    this.end,
    this.userId,
    this.profileId,
    this.createdAt,
    this.updatedAt,
  });
}
