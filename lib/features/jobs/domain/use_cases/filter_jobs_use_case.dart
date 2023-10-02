import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../repositories/job_repository.dart';

class FilterJobsUseCase {
  FilterJobsUseCase({
    required this.jobRepo,
  });
  JobRepository jobRepo;

  Future<Either<Failure, List<JobEntity>>> call({
    String? jobName,
    String? jobLocation,
    String? jobSalary,
  }) {
    return jobRepo.filterJobs(
      jobName: jobName,
      jobLocation: jobLocation,
      jobSalary: jobSalary,
    );
  }
}
