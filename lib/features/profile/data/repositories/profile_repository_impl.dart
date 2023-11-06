// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/core/utils/functions/pick_image_from_gallery.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';
import '../../../../core/errors/exception.dart';
import '../../domain/repos/profile_repository.dart';
import '../data_sources/profile_local_data_source.dart';
import '../data_sources/profile_remote_data_source.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRemoteDataSource profileRemoteDataSource;
  ProfileLocalDataSource profileLocalDataSource;
  ProfileRepositoryImpl({
    required this.profileRemoteDataSource,
    required this.profileLocalDataSource,
  });

  @override
  Future<Either<Failure, ProfileEntity>> addPersonalDetails({
    required Map<String, String> personalDetails,
  }) async {
    try {
      var profileEntity = profileLocalDataSource.getProfile();
      var profileEntityWithPersonalDetails = profileEntity!.copyWith(
        personalDetailed: jsonEncode(personalDetails),
      );
      var profile = ProfileModel.downCasting(
          profileEntity: profileEntityWithPersonalDetails);

      var updatedProfile = await profileRemoteDataSource.addPresonalDetails(
        profileWithPersonalDetails: profile,
      );
      profileLocalDataSource.saveProfile(
        profileToCached: profileEntityWithPersonalDetails,
      );
      return Right(updatedProfile);
    } on NoProfileExistException {
      return Left(NoProfileExistFailure());
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> addProfileLanguage(
      {required String language}) async {
    try {
      var profileEntity = profileLocalDataSource.getProfile();
      var profileEntityWithLanguage = profileEntity!.copyWith(
        language: language,
      );
      var profile = ProfileModel.downCasting(
        profileEntity: profileEntityWithLanguage,
      );

      var updatedProfile = await profileRemoteDataSource.addProfileLanguage(
        profileWithLanguage: profile,
      );
      profileLocalDataSource.saveProfile(
        profileToCached: profileEntityWithLanguage,
      );
      return Right(updatedProfile);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, String?>> changeProfileImage() async {
    try {
      var profileImagePath = await pickImageFromGallery();
      if (profileImagePath != null) {
        await profileLocalDataSource.saveProfileImage(
          imageFilePath: profileImagePath,
        );
      }
      return Right(profileImagePath);
    } on PlatformException {
      return Left(PlatformFailure());
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      var profile = profileLocalDataSource.getProfile();
      profile ??= await profileRemoteDataSource.getProfile();
      await profileLocalDataSource.saveProfile(profileToCached: profile);
      return Right(profile);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> workPreferences({
    required Map<String, dynamic> workPreferences,
  }) async {
    try {
      ProfileEntity? profileEntity;
      profileEntity = profileLocalDataSource.getProfile();
      profileEntity ??= await profileRemoteDataSource.getProfile();
      var profileEntityWithWorkPrefrences = profileEntity.copyWith(
        interestedWork: workPreferences['interestedWork'],
        offlinePlace: workPreferences['offlinePlace'] as List<String>,
        remotePlace: workPreferences['remotePlace'] as bool,
      );
      var profile = ProfileModel.downCasting(
        profileEntity: profileEntityWithWorkPrefrences,
      );

      var updatedProfile = await profileRemoteDataSource.editProfile(
        profileWithEditData: profile,
      );
      profileLocalDataSource.saveProfile(
        profileToCached: profileEntityWithWorkPrefrences,
      );
      return Right(updatedProfile);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> completeProfile() async {
    try {
      var profile = profileLocalDataSource.getProfile() ??
          await profileRemoteDataSource.getProfile();
      return Right(profile);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Either<Failure, String> getProfileImage() {
    try {
      var imagePath = profileLocalDataSource.getProfileImagePath();
      return Right(imagePath);
    } on NoProfileImageYetException {
      return Left(NoProfileImageYetFailure());
    }
  }
}
