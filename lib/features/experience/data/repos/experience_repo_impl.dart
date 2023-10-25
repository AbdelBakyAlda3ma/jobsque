import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/experience/data/data_sources/experience_remote_data_source.dart';
import 'package:jobseque/features/experience/data/models/experience_model.dart';
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
  Future<Either<Failure, Unit>> addExperience(
      {required ExperienceModel experience}) async {
    try {
      var profileEntity = _profileLocalDataSource.getProfile();

      var profileEntityWithExperience =
          profileEntity!.copyWith(experience: experience);
      var profileModelWithExperience = ProfileModel.downCasting(
        profileEntity: profileEntityWithExperience,
      );

      await experienceRemoteDataSource.addExperience(
          profileWithExperience: profileModelWithExperience);
      await _profileLocalDataSource.saveProfile(
          profileToCached: profileEntityWithExperience);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
