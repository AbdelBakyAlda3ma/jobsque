import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/experience/data/data_sources/experience_remote_data_source.dart';
import 'package:jobseque/features/experience/data/models/experience_model.dart';
import 'package:jobseque/features/experience/domain/entities/experience_entity.dart';
import 'package:jobseque/features/experience/domain/repos/experience_repo.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';

class ExperienceRepoImpl extends ExperienceRepo {
  ExperienceRemoteDataSource experienceRemoteDataSource;
  final ProfileLocalDataSource _profileLocalDataSource;
  ExperienceRepoImpl({
    required this.experienceRemoteDataSource,
  }) : _profileLocalDataSource = ProfileLocalDataSourceImpl();

  @override
  Future<Either<Failure, ExperienceEntity>> addExperience(
      {required ExperienceModel experience}) async {
    try {
      var profileEntity = _profileLocalDataSource.getProfile();
      ProfileModel profile =
          ProfileModel().downCasting(profileEntity: profileEntity);
      var experienceModel = await experienceRemoteDataSource.addExperience(
          experience: experience);
      var updatedProfile = profile.copyWith(experience: experience);
      await _profileLocalDataSource.saveProfile(
          profileToCached: updatedProfile);

      return Right(experienceModel);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
