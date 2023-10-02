// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'portfolio_entity.g.dart';

@HiveType(typeId: 3)
class PortfolioEntity extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? cvFile;
  @HiveField(2)
  String? image;
  @HiveField(3)
  int? userId;
  @HiveField(4)
  String? updatedAt;
  @HiveField(5)
  String? createdAt;
  @HiveField(6)
  int? id;
  PortfolioEntity({
    this.name,
    this.cvFile,
    this.image,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });
}
