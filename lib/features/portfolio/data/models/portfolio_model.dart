import 'dart:convert';
import '../../domain/entities/portfolio_entity.dart';

class PortfolioModel extends PortfolioEntity {
  PortfolioModel({
    super.name,
    super.cvFile,
    super.image,
    super.userId,
    super.updatedAt,
    super.createdAt,
    super.id,
  });

  factory PortfolioModel.fromMap(Map<String, dynamic> data) => PortfolioModel(
        name: data['name'] as String?,
        cvFile: data['cv_file'] as String?,
        image: data['image'] as String?,
        userId: data['user_id'] as int?,
        updatedAt: data['updated_at'] as String?,
        createdAt: data['created_at'] as String?,
        id: data['id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'cv_file': cvFile,
        'image': image,
        'user_id': userId,
        'updated_at': updatedAt,
        'created_at': createdAt,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PortfolioModel].
  factory PortfolioModel.fromJson(String data) {
    return PortfolioModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PortfolioModel] to a JSON string.
  String toJson() => json.encode(toMap());

  PortfolioModel copyWith({
    String? name,
    String? cvFile,
    String? image,
    int? userId,
    String? updatedAt,
    String? createdAt,
    int? id,
  }) {
    return PortfolioModel(
      name: name ?? super.name,
      cvFile: cvFile ?? super.cvFile,
      image: image ?? super.image,
      userId: userId ?? super.userId,
      updatedAt: updatedAt ?? super.updatedAt,
      createdAt: createdAt ?? super.createdAt,
      id: id ?? super.id,
    );
  }
}
