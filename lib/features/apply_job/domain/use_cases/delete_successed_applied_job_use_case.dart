import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class DeleteSuccessedAppliedJobUseCase {
  ApplyJobRepo applyJobRepo;
  DeleteSuccessedAppliedJobUseCase({
    required this.applyJobRepo,
  });
  Future<void> call({required JobEntity successedAppliedJob}) async {
    return await applyJobRepo.deleteSuccessedAppliedJob(
      successedAppliedJob: successedAppliedJob,
    );
  }
}
