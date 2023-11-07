import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class JobRepository {
  Future<Either<Failure, List<JobEntity>>> getAllJobs();
  Future<Either<Failure, List<JobEntity>>> searchJobs({
    required String jobName,
  });
  Future<Either<Failure, List<JobEntity>>> filterJobs({
    String? jobName,
    String? jobLocation,
    String? jobSalary,
  });
  Either<Failure, List<JobEntity>> showSubmittedJobs();
  Future<void> addSubmittedJob({
    required JobEntity job,
  });
}
