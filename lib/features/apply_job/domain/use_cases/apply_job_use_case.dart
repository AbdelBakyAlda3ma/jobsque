import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/repos/apply_job_repo.dart';

class ApplyJobUseCase {
  ApplyJobRepo applyJobRepo;
  ApplyJobUseCase({required this.applyJobRepo});
  Future<Either<Failure, Unit>> call({
    required ApplyJobEntity applyJobEntity,
  }) {
    return applyJobRepo.applyJob(
      applyJobEntity: applyJobEntity,
    );
  }
}
