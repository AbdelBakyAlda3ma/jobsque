import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/apply_job/data/models/apply_job_model.dart';

abstract class ApplyJobRepo {
  Future<Either<Failure, ApplyJobModel>> apply();
  Future<Either<Failure, List<ApplyJobModel>>> showApply();
}
