import 'package:dartz/dartz.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';

class AddActiveApplicationUseCase {
  ApplyJobRepo applyJobRepo;
  AddActiveApplicationUseCase({required this.applyJobRepo});
  Future<Unit> call({required ActiveAppliedJobEntity activeAppliedJob}) async {
    applyJobRepo.addActiveApplication(
      activeAppliedJob: activeAppliedJob,
    );
    return Future.value(unit);
  }
}
