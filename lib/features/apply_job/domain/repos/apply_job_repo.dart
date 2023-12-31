import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class ApplyJobRepo {
  Future<Either<Failure, Unit>> applyJob({
    required ApplyJobEntity applyJobEntity,
  });
  Either<Failure, List<ActiveAppliedJobEntity>> showActiveAppliedJobs();
  Future<void> addActiveApplication({
    required ActiveAppliedJobEntity activeAppliedJob,
  });
  Future<void> deleteSuccessedAppliedJob({
    required JobEntity successedAppliedJob,
  });
}
