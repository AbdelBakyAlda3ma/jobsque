// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';
import 'package:jobseque/features/education/domain/entities/education_entity.dart';
import 'package:jobseque/features/experience/domain/entities/experience_entity.dart';
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
  dynamic remotePlace;
  @HiveField(10)
  String? bio;
  @HiveField(11)
  EducationEntity? education;
  @HiveField(12)
  ExperienceEntity? experience;
  @HiveField(13)
  String? personalDetailed;
  @HiveField(14)
  String? createdAt;
  @HiveField(15)
  String? updatedAt;
  @HiveField(16)
  int numbersOfPortfolios;

  bool get isCompleted {
    return personalDetailed != null &&
        education != null &&
        experience != null &&
        numbersOfPortfolios != 0;
  }

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

  ProfileEntity copyWith({
    int? id,
    int? userId,
    String? name,
    String? email,
    String? mobile,
    String? address,
    String? language,
    List<String>? interestedWork,
    List<String>? offlinePlace,
    dynamic remotePlace,
    String? bio,
    EducationEntity? education,
    ExperienceEntity? experience,
    String? personalDetailed,
    String? createdAt,
    String? updatedAt,
    int? numbersOfPortfolios,
  }) {
    return ProfileEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      address: address ?? this.address,
      language: language ?? this.language,
      interestedWork: interestedWork ?? this.interestedWork,
      offlinePlace: offlinePlace ?? this.offlinePlace,
      remotePlace: remotePlace ?? this.remotePlace,
      bio: bio ?? this.bio,
      education: education ?? this.education,
      experience: experience ?? this.experience,
      personalDetailed: personalDetailed ?? this.personalDetailed,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      numbersOfPortfolios: numbersOfPortfolios ?? this.numbersOfPortfolios,
    );
  }
}
