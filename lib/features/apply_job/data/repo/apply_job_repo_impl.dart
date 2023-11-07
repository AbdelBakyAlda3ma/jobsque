import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/apply_job/data/data_sources/apply_job_local_data_source.dart';
import 'package:jobseque/features/apply_job/data/data_sources/apply_job_remote_data_source.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';

class ApplyJobRepoImpl extends ApplyJobRepo {
  ApplyJobLocalDataSource applyJobLocalDataSource;
  ApplyJobRemoteDataSource applyJobRemoteDataSource;
  ApplyJobRepoImpl({
    required this.applyJobLocalDataSource,
    required this.applyJobRemoteDataSource,
  });
  @override
  Future<void> addActiveApplication({
    required ActiveAppliedJobEntity activeAppliedJob,
  }) async {
    await applyJobLocalDataSource.addActiveApplication(
      activeAppliedJobEntity: activeAppliedJob,
    );
  }

  @override
  Future<Either<Failure, Unit>> applyJob(
      {required ApplyJobEntity applyJobEntity}) async {
    try {
      await applyJobRemoteDataSource.applyJob(applyJobEntity: applyJobEntity);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Either<Failure, List<ActiveAppliedJobEntity>> showActiveAppliedJobs() {
    try {
      var listOfActiveAppliedJobs =
          applyJobLocalDataSource.getActiveAppliedJobs();
      return Right(listOfActiveAppliedJobs);
    } on NoActiveJobsException {
      return Left(NoActiveJobsFailure());
    }
  }
}
