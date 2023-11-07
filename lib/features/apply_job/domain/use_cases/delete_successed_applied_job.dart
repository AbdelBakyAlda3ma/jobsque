import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';

class DeleteSuccessedAppliedJob {
  ApplyJobRepo applyJobRepo;
  DeleteSuccessedAppliedJob({
    required this.applyJobRepo,
  });
  Future<void> call({required ActiveAppliedJobEntity activeAppliedJob}) async {
    return await applyJobRepo.deleteSuccessedAppliedJob(
      activeAppliedJob: activeAppliedJob,
    );
  }
}
