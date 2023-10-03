// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/core/utils/functions/pick_image_from_gallery.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/features/profile/data/models/education_model.dart';
import 'package:jobseque/features/profile/data/models/experience_model.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';
import 'package:jobseque/features/profile/domain/entities/education_entity.dart';
import 'package:jobseque/features/profile/domain/entities/experience_entity.dart';
import 'package:jobseque/features/profile/domain/entities/portfolio_entity.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';
import '../../../../core/errors/exception.dart';
import '../../../../core/utils/constances.dart';
import '../../domain/repos/profile_repository.dart';
import '../data_sources/local_data_source/profile_local_data_source.dart';
import '../data_sources/remote_data_source/profile_remote_data_source.dart';
import '../models/portfolio_model.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRemoteDataSource profileRemoteDataSource;
  ProfileLocalDataSource profileLocalDataSource;
  ProfileRepositoryImpl({
    required this.profileRemoteDataSource,
    required this.profileLocalDataSource,
  });

  @override
  Future<Either<Failure, EducationEntity>> addEducation(
      {required EducationModel education}) async {
    try {
      var profile = profileLocalDataSource.getProfile() as ProfileModel;
      var educationModel =
          await profileRemoteDataSource.addEducatoin(education: education);
      var updatedProfile = profile.copyWith(education: education);
      await profileLocalDataSource.saveProfile(profileToCached: updatedProfile);
      return Right(educationModel);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, ExperienceEntity>> addExperience(
      {required ExperienceModel experience}) async {
    try {
      var profile = profileLocalDataSource.getProfile() as ProfileModel;
      var experienceModel =
          await profileRemoteDataSource.addExperience(experience: experience);
      var updatedProfile = profile.copyWith(experience: experience);
      await profileLocalDataSource.saveProfile(profileToCached: updatedProfile);

      return Right(experienceModel);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, PortfolioEntity>> addPortfolio({
    required String pathOfcV,
    required String portfolioName,
  }) async {
    try {
      var profile = profileLocalDataSource.getProfile();
      var pathOfProfileImage = profileLocalDataSource.getProfileImagePath();
      PortfolioModel portfolio = PortfolioModel(
        image: pathOfProfileImage,
        cvFile: pathOfcV,
        name: portfolioName,
      );
      var addedPortfolio =
          await profileRemoteDataSource.addPortfolio(portfolio: portfolio);
      await profileLocalDataSource.addPortfolio(
          portfolioToCached: addedPortfolio);
      await JobsqueSharedPrefrences.setBool(
          kPortfolioAddedAndNeedToRefresh, true);
      profile.numbersOfPortfolios++;
      return Right(addedPortfolio);
    } on NoProfileImageYetException {
      return Left(NoProfileImageYetFailure());
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

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
  Future<Either<Failure, List<PortfolioEntity>>> getPortfolios() async {
    try {
      List<PortfolioEntity> portfoliosList = [];
      bool? isNeedToRefresh =
          JobsqueSharedPrefrences.getBool(kPortfolioAddedAndNeedToRefresh);
      if (isNeedToRefresh != null && isNeedToRefresh == true) {
        portfoliosList = await profileRemoteDataSource.getPortofolios();
      } else {
        portfoliosList = profileLocalDataSource.getPortofolios();
      }
      return Right(portfoliosList);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
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
  Future<Either<Failure, ProfileEntity>> setWorkPreferences({
    required Map<String, dynamic> workPreferences,
  }) async {
    try {
      var profile = profileLocalDataSource.getProfile() as ProfileModel;
      profile = ProfileModel().copyWith(
        interestedWork: workPreferences['interestedWork'],
        offlinePlace: workPreferences['offlinePlace'],
        remotePlace: workPreferences['remotePlace'],
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
  Future<Either<Failure, Unit>> deletePortfolio(
      {required PortfolioEntity portfolio}) async {
    try {
      await profileRemoteDataSource.deletePortfolio(portfolioID: portfolio.id!);
      await profileLocalDataSource.deletePortfolio(
          portfolioToDeleted: portfolio);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
