// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/education/data/data_sources/education_remote_data_source.dart';
import 'package:jobseque/features/education/data/models/education_model.dart';
import 'package:jobseque/features/education/domain/repos/education_repo.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';

class EducationRepoImpl extends EducationRepo {
  final ProfileLocalDataSource _profileLocalDataSource;
  EducationRemoteDataSource educationRemoteDataSource;
  EducationRepoImpl({
    required this.educationRemoteDataSource,
  }) : _profileLocalDataSource = ProfileLocalDataSourceImpl();

  @override
  Future<Either<Failure, Unit>> addEducation(
      {required EducationModel education}) async {
    try {
      var profileEntity = _profileLocalDataSource.getProfile();

      var profileWithEducation = profileEntity!.copyWith(education: education);

      var profileModelWithEducation =
          ProfileModel.downCasting(profileEntity: profileWithEducation);
      // var updatedProfile =
      await educationRemoteDataSource.addEducation(
          profileWitheducation: profileModelWithEducation);

      await _profileLocalDataSource.saveProfile(
        profileToCached: profileWithEducation,
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
