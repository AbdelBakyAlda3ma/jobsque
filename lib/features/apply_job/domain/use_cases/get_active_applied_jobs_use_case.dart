import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';

class GetActiveAppliedJobsUseCase {
  ApplyJobRepo applyJobRepo;
  GetActiveAppliedJobsUseCase({required this.applyJobRepo});
  Either<Failure, List<ActiveAppliedJobEntity>> call() {
    return applyJobRepo.showActiveAppliedJobs();
  }
}
