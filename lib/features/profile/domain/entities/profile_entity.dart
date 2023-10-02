// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';
import '../../data/models/education_model.dart';
import '../../data/models/experience_model.dart';

part 'profile_entity.g.dart';

@HiveType(typeId: 0)
class ProfileEntity extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? userId;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? mobile;
  @HiveField(5)
  String? address;
  @HiveField(6)
  String? language;
  @HiveField(7)
  List<String>? interestedWork;
  @HiveField(8)
  List<String>? offlinePlace;
  @HiveField(9)
  bool? remotePlace;
  @HiveField(10)
  String? bio;
  @HiveField(11)
  EducationModel? education;
  @HiveField(12)
  ExperienceModel? experience;
  @HiveField(13)
  String? personalDetailed;
  @HiveField(14)
  String? createdAt;
  @HiveField(15)
  String? updatedAt;
  @HiveField(16)
  int numbersOfPortfolios;

  bool get isCompleted =>
      personalDetailed == null &&
      education == null &&
      experience == null &&
      numbersOfPortfolios == 0;

  ProfileEntity({
    this.id,
    this.userId,
    this.name,
    this.email,
    this.mobile,
    this.address,
    this.language,
    this.interestedWork,
    this.offlinePlace,
    this.remotePlace,
    this.bio,
    this.education,
    this.experience,
    this.personalDetailed,
    this.createdAt,
    this.updatedAt,
    this.numbersOfPortfolios = 0,
  });
}
