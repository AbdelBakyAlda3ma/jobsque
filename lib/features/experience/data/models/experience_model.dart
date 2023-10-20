import 'dart:convert';

import 'package:jobseque/features/experience/domain/entities/experience_entity.dart';

class ExperienceModel extends ExperienceEntity {
  ExperienceModel({
    super.userId,
    super.postion,
    super.typeWork,
    super.compName,
    super.location,
    super.start,
    super.updatedAt,
    super.createdAt,
    super.id,
  });

  factory ExperienceModel.fromMap(Map<String, dynamic> data) => ExperienceModel(
        userId: data['user_id'] as String?,
        postion: data['postion'] as String?,
        typeWork: data['type_work'] as String?,
        compName: data['comp_name'] as String?,
        location: data['location'] as String?,
        start: data['start'] as String?,
        updatedAt: data['updated_at'] as String?,
        createdAt: data['created_at'] as String?,
        id: data['id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'postion': postion,
        'type_work': typeWork,
        'comp_name': compName,
        'location': location,
        'start': start,
        'updated_at': updatedAt,
        'created_at': createdAt,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ExperienceModel].
  factory ExperienceModel.fromJson(String data) {
    return ExperienceModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ExperienceModel] to a JSON string.
  String toJson() => json.encode(toMap());

  ExperienceModel copyWith({
    String? userId,
    String? postion,
    String? typeWork,
    String? compName,
    String? location,
    String? start,
    String? updatedAt,
    String? createdAt,
    int? id,
  }) {
    return ExperienceModel(
      userId: userId ?? super.userId,
      postion: postion ?? super.postion,
      typeWork: typeWork ?? super.typeWork,
      compName: compName ?? super.compName,
      location: location ?? super.location,
      start: start ?? super.start,
      updatedAt: updatedAt ?? super.updatedAt,
      createdAt: createdAt ?? super.createdAt,
      id: id ?? super.id,
    );
  }

  factory ExperienceModel.downCasting(
      {required ExperienceEntity experienceEntity}) {
    return ExperienceModel(
      id: experienceEntity.id,
      postion: experienceEntity.postion,
      typeWork: experienceEntity.typeWork,
      start: experienceEntity.start,
      compName: experienceEntity.compName,
      userId: experienceEntity.userId,
      location: experienceEntity.location,
      createdAt: experienceEntity.createdAt,
      updatedAt: experienceEntity.updatedAt,
    );
  }
}
