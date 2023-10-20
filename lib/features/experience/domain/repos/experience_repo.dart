import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/experience/data/models/experience_model.dart';

abstract class ExperienceRepo {
  Future<Either<Failure, Unit>> addExperience(
      {required ExperienceModel experience});
}
