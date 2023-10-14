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
      var profile = profileLocalDataSource.getProfile() as ProfileModel;
      profile = ProfileModel().copyWith(
        personalDetailed: jsonEncode(personalDetails),
      );
      var updatedProfile = await profileRemoteDataSource.addPresonalDetails(
        profileWithPersonalDetails: profile,
      );
      profileLocalDataSource.saveProfile(profileToCached: updatedProfile);
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
      var profile = profileLocalDataSource.getProfile() as ProfileModel;
      profile = ProfileModel().copyWith(
        language: language,
      );
      var updatedProfile = await profileRemoteDataSource.addPresonalDetails(
        profileWithPersonalDetails: profile,
      );
      profileLocalDataSource.saveProfile(profileToCached: updatedProfile);
      return Right(updatedProfile);
    } on NoProfileExistException {
      return Left(NoProfileExistFailure());
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
      var profile = await profileRemoteDataSource.getProfile();
      await profileLocalDataSource.saveProfile(profileToCached: profile);
      return Right(profile);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> editProfile(
      {required Map<String, String> profileInfo}) async {
    try {
      var profile = profileLocalDataSource.getProfile() as ProfileModel;
      profile = ProfileModel().copyWith(
        name: profileInfo['name'],
        bio: profileInfo['bio'],
        address: profileInfo['address'],
        mobile: profileInfo['mobile'],
      );
      var updatedProfile = await profileRemoteDataSource.editProfile(
        profileWithEditData: profile,
      );
      profileLocalDataSource.saveProfile(profileToCached: updatedProfile);
      return Right(updatedProfile);
    } on NoProfileExistException {
      return Left(NoProfileExistFailure());
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> workPreferences({
    required Map<String, dynamic> workPreferences,
  }) async {
    try {
      var profile = ProfileModel().copyWith(
        interestedWork: workPreferences['interestedWork'],
        offlinePlace: workPreferences['offlinePlace'] as List<String>,
        remotePlace: workPreferences['remotePlace'] as bool,
      );
      var updatedProfile = await profileRemoteDataSource.editProfile(
        profileWithEditData: profile,
      );
      profileLocalDataSource.saveProfile(profileToCached: updatedProfile);
      return Right(updatedProfile);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
