// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  @HiveField(18)
  bool isSubmitted;
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
    this.isSubmitted = false,
  });

  @override
  bool operator ==(covariant JobEntity other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.image == image &&
        other.jobTimeType == jobTimeType &&
        other.jobType == jobType &&
        other.jobLevel == jobLevel &&
        other.jobDescription == jobDescription &&
        other.jobSkill == jobSkill &&
        other.compName == compName &&
        other.compEmail == compEmail &&
        other.compWebsite == compWebsite &&
        other.aboutCompany == aboutCompany &&
        other.location == location &&
        other.salary == salary &&
        other.id == id &&
        other.favorites == favorites &&
        other.expired == expired &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.isSaved == isSaved &&
        other.isSubmitted == isSubmitted;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        image.hashCode ^
        jobTimeType.hashCode ^
        jobType.hashCode ^
        jobLevel.hashCode ^
        jobDescription.hashCode ^
        jobSkill.hashCode ^
        compName.hashCode ^
        compEmail.hashCode ^
        compWebsite.hashCode ^
        aboutCompany.hashCode ^
        location.hashCode ^
        salary.hashCode ^
        id.hashCode ^
        favorites.hashCode ^
        expired.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        isSaved.hashCode ^
        isSubmitted.hashCode;
  }

  JobEntity copyWith({
    String? name,
    String? image,
    String? jobTimeType,
    String? jobType,
    String? jobLevel,
    String? jobDescription,
    String? jobSkill,
    String? compName,
    String? compEmail,
    String? compWebsite,
    String? aboutCompany,
    String? location,
    String? salary,
    int? id,
    int? favorites,
    int? expired,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isSaved,
    bool? isSubmitted,
  }) {
    return JobEntity(
      name: name ?? this.name,
      image: image ?? this.image,
      jobTimeType: jobTimeType ?? this.jobTimeType,
      jobType: jobType ?? this.jobType,
      jobLevel: jobLevel ?? this.jobLevel,
      jobDescription: jobDescription ?? this.jobDescription,
      jobSkill: jobSkill ?? this.jobSkill,
      compName: compName ?? this.compName,
      compEmail: compEmail ?? this.compEmail,
      compWebsite: compWebsite ?? this.compWebsite,
      aboutCompany: aboutCompany ?? this.aboutCompany,
      location: location ?? this.location,
      salary: salary ?? this.salary,
      id: id ?? this.id,
      favorites: favorites ?? this.favorites,
      expired: expired ?? this.expired,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isSaved: isSaved ?? this.isSaved,
      isSubmitted: isSubmitted ?? this.isSubmitted,
    );
  }
}
