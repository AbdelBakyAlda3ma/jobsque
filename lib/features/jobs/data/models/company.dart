import 'dart:convert';

import 'package:equatable/equatable.dart';

class Company extends Equatable {
  final int? id;
  final String? name;
  final dynamic image;
  final String? email;
  final String? website;
  final String? about;
  final String? location;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Company({
    this.id,
    this.name,
    this.image,
    this.email,
    this.website,
    this.about,
    this.location,
    this.createdAt,
    this.updatedAt,
  });

  factory Company.fromMap(Map<String, dynamic> data) => Company(
        id: data['id'] as int?,
        name: data['name'] as String?,
        image: data['image'] as dynamic,
        email: data['email'] as String?,
        website: data['website'] as String?,
        about: data['about'] as String?,
        location: data['location'] as String?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'image': image,
        'email': email,
        'website': website,
        'about': about,
        'location': location,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Company].
  factory Company.fromJson(String data) {
    return Company.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Company] to a JSON string.
  String toJson() => json.encode(toMap());

  Company copyWith({
    int? id,
    String? name,
    dynamic image,
    String? email,
    String? website,
    String? about,
    String? location,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Company(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      email: email ?? this.email,
      website: website ?? this.website,
      about: about ?? this.about,
      location: location ?? this.location,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      image,
      email,
      website,
      about,
      location,
      createdAt,
      updatedAt,
    ];
  }
}
