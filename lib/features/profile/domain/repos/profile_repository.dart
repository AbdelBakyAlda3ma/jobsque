import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> addPersonalDetails(
      {required Map<String, String> personalDetails});

  Future<Either<Failure, String?>> changeProfileImage();
  Future<Either<Failure, ProfileEntity>> addProfileLanguage(
      {required String language});
  Future<Either<Failure, ProfileEntity>> editProfile(
      {required Map<String, String> profileInfo});
  Future<Either<Failure, ProfileEntity>> workPreferences(
      {required Map<String, dynamic> workPreferences});

  Future<Either<Failure, ProfileEntity>> getProfile();
}
