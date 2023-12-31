// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import '../../domain/entities/profile_entity.dart';
import '../../../education/data/models/education_model.dart';
import '../../../experience/data/models/experience_model.dart';

class ProfileModel extends ProfileEntity {
  ProfileModel({
    super.id,
    super.userId,
    super.name,
    super.email,
    super.mobile,
    super.address,
    super.language,
    super.interestedWork,
    super.offlinePlace,
    super.remotePlace,
    super.bio,
    super.education,
    super.experience,
    super.personalDetailed,
    super.createdAt,
    super.updatedAt,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> data) => ProfileModel(
        id: data['id'] as int?,
        userId: data['user_id'] as int?,
        name: data['name'] as dynamic,
        email: data['email'] as dynamic,
        mobile: data['mobile'] as dynamic,
        address: data['address'] as dynamic,
        language: data['language'] as dynamic,
        interestedWork: data['interested_work'].toString().split(''),
        offlinePlace: data['offline_place'].toString().split(''),
        remotePlace: data['remote_place'] as dynamic,
        bio: data['bio'] as dynamic,
        education: data['education'] != null
            ? EducationModel.fromJson(data['education'])
            : null,
        experience: data['experience'] != null
            ? ExperienceModel.fromJson(data['experience'])
            : null,
        personalDetailed: data['personal_detailed'] as dynamic,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'user_id': userId,
        'name': name,
        'email': email,
        'mobile': mobile,
        'address': address,
        'language': language,
        'interested_work': interestedWork,
        'offline_place': offlinePlace,
        'remote_place': remotePlace,
        'bio': bio,
        'education': education != null
            ? EducationModel.downCasting(educationEntity: education!).toJson()
            : null,
        'experience': experience != null
            ? ExperienceModel.downCasting(experienceEntity: experience!)
                .toJson()
            : null,
        'personal_detailed': personalDetailed,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProfileModel].
  factory ProfileModel.fromJson(String data) {
    return ProfileModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProfileModel] to a JSON string.
  String toJson() => json.encode(toMap());

  factory ProfileModel.downCasting({required ProfileEntity profileEntity}) {
    return ProfileModel(
      id: profileEntity.id,
      userId: profileEntity.userId,
      name: profileEntity.name,
      email: profileEntity.email,
      mobile: profileEntity.mobile,
      address: profileEntity.address,
      language: profileEntity.language,
      interestedWork: profileEntity.interestedWork,
      offlinePlace: profileEntity.offlinePlace,
      remotePlace: profileEntity.remotePlace,
      bio: profileEntity.bio,
      education: profileEntity.education,
      experience: profileEntity.experience,
      personalDetailed: profileEntity.personalDetailed,
      createdAt: profileEntity.createdAt,
      updatedAt: profileEntity.updatedAt,
    );
  }

  @override
  String toString() {
    return 'ProfileModel(id: $id, userId: $userId, name: $name, email: $email, mobile: $mobile, address: $address, language: $language, interestedWork: $interestedWork, offlinePlace: $offlinePlace, remotePlace: $remotePlace, bio: $bio, education: $education, experience: $experience, personalDetailed: $personalDetailed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
