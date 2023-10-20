import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/apply_job/data/models/apply_job_model.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';

abstract class ApplyJobRepo {
  Future<Either<Failure, Unit>> applyJob({
    required ApplyJobEntity applyJobEntity,
  });
  List<ApplyJobModel> showActiveAppliedJobs();
  Future<Unit> addActiveAppliedJob({
    required ActiveAppliedJobEntity activeAppliedJob,
  });
}
