// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/core/network/network_info.dart';
import 'package:jobseque/features/jobs/data/data_sources/job_local_data_source.dart';
import 'package:jobseque/features/jobs/data/data_sources/job_remote_data_source.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../../domain/repositories/job_repository.dart';

class JobRepositoryImpl extends JobRepository {
  JobRemoteDataSource jobRemoteDataSource;
  JobLocalDataSource jobLocalDataSource;
  NetworkInfo networkInfo;
  JobRepositoryImpl({
    required this.jobRemoteDataSource,
    required this.jobLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<JobEntity>>> filterJobs(
      {String? jobName, String? jobLocation, String? jobSalary}) async {
    if (await networkInfo.isConnected) {
      try {
        List<JobEntity> filteredJobsList = await jobRemoteDataSource.filterJobs(
          jobName: jobName,
          jobLocation: jobLocation,
          jobSalary: jobSalary,
        );
        return Right(filteredJobsList);
      } on FilterSearchInvalidInputException {
        return Left(FilterSearchInvalidInputFailure());
      } on DioException catch (e) {
        return Left(ServerFailure.fromDio(e));
      } on FilteredSearchNotFoundException {
        return Left(FilteredSearchNotFoundlFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, List<JobEntity>>> getAllJobs() async {
    if (await networkInfo.isConnected) {
      try {
        List<JobEntity> allJobsList = [];
        allJobsList = jobLocalDataSource.getAllJobs();
        if (allJobsList.isEmpty) {
          allJobsList = await jobRemoteDataSource.getAllJobs();
          jobLocalDataSource.saveListOfJobs(
            listOfChachedJobs: allJobsList,
          );
        }
        return Right(allJobsList);
      } on NoJobsYetException {
        return Left(NoJobsYetFailure());
      } on SearchNotFoundException {
        return Left(SearchNotFoundlFailure());
      } on DioException catch (e) {
        return Left(ServerFailure.fromDio(e));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, List<JobEntity>>> searchJobs(
      {required String jobName}) async {
    if (await networkInfo.isConnected) {
      try {
        List<JobEntity> searchedJobsList =
            await jobRemoteDataSource.searchJobs(jobName: jobName);
        return Right(searchedJobsList);
      } on SearchNotFoundException {
        return Left(SearchNotFoundlFailure());
      } on DioException catch (e) {
        return Left(ServerFailure.fromDio(e));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
