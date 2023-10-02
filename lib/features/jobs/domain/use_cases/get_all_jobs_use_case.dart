import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../repositories/job_repository.dart';

class GetAllJobsUseCase {
  GetAllJobsUseCase({
    required this.jobRepo,
  });
  JobRepository jobRepo;
  Future<Either<Failure, List<JobEntity>>> call() {
    return jobRepo.getAllJobs();
  }
}
