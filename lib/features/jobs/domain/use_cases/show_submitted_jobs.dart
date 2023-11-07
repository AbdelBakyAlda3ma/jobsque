import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/repositories/job_repository.dart';

class ShowSubmittedJobsUseCase {
  JobRepository jobRepository;
  ShowSubmittedJobsUseCase({
    required this.jobRepository,
  });
  Either<Failure, List<JobEntity>> call() {
    return jobRepository.showSubmittedJobs();
  }
}
