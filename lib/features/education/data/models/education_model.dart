import 'dart:convert';

import 'package:jobseque/features/education/domain/entities/education_entity.dart';

class EducationModel extends EducationEntity {
  EducationModel({
    super.id,
    super.universty,
    super.title,
    super.start,
    super.end,
    super.userId,
    super.profileId,
    super.createdAt,
    super.updatedAt,
  });

  factory EducationModel.fromMap(Map<String, dynamic> data) {
    return EducationModel(
      id: data['id'] as int?,
      universty: data['universty'] as String?,
      title: data['title'] as String?,
      start: data['start'] as String?,
      end: data['end'] as String?,
      userId: data['user_id'] as int?,
      profileId: data['profile_id'] as String?,
      createdAt: data['created_at'] as String?,
      updatedAt: data['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'universty': universty,
        'title': title,
        'start': start,
        'end': end,
        'user_id': userId,
        'profile_id': profileId,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EducationModel].
  factory EducationModel.fromJson(String data) {
    return EducationModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EducationModel] to a JSON string.
  String toJson() => json.encode(toMap());

  EducationModel copyWith({
    int? id,
    String? universty,
    String? title,
    String? start,
    String? end,
    int? userId,
    String? profileId,
    String? createdAt,
    String? updatedAt,
  }) {
    return EducationModel(
      id: id ?? super.id,
      universty: universty ?? super.universty,
      title: title ?? super.title,
      start: start ?? super.start,
      end: end ?? super.end,
      userId: userId ?? super.userId,
      profileId: profileId ?? super.profileId,
      createdAt: createdAt ?? super.createdAt,
      updatedAt: updatedAt ?? super.updatedAt,
    );
  }
}
