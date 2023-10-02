import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/profile/data/models/education_model.dart';
import 'package:jobseque/features/profile/data/models/experience_model.dart';
import 'package:jobseque/features/profile/domain/entities/education_entity.dart';
import 'package:jobseque/features/profile/domain/entities/experience_entity.dart';
import 'package:jobseque/features/profile/domain/entities/portfolio_entity.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ExperienceEntity>> addExperience(
      {required ExperienceModel experience});
  Future<Either<Failure, EducationEntity>> addEducation(
      {required EducationModel education});
  Future<Either<Failure, ProfileEntity>> addPresonalDetails(
      {required Map<String, String> personalDetails});

  Future<Either<Failure, PortfolioEntity>> addPortfolio(
      {required String pathOfcV, required String portfolioName});
  Future<Either<Failure, String?>> changeProfileImage();
  Future<Either<Failure, ProfileEntity>> addProfileLanguage(
      {required String language});
  Future<Either<Failure, ProfileEntity>> editProfile(
      {required Map<String, String> profileInfo});
  Future<Either<Failure, ProfileEntity>> setWorkPreferences(
      {required Map<String, String> workPreferences});

  Future<Either<Failure, ProfileEntity>> getProfile();
  Future<Either<Failure, List<PortfolioEntity>>> getPortofolios();
}
