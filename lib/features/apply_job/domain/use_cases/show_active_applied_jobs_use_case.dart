import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';

class ShowActiveAppliedJobsUseCase {
  ApplyJobRepo applyJobRepo;
  ShowActiveAppliedJobsUseCase({required this.applyJobRepo});
  List<ActiveAppliedJobEntity> call() {
    return applyJobRepo.showActiveAppliedJobs();
  }
}
