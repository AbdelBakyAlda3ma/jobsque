import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/experience/data/models/experience_model.dart';
import 'package:jobseque/features/experience/domain/entities/experience_entity.dart';

abstract class ExperienceRepo {
  Future<Either<Failure, ExperienceEntity>> addExperience(
      {required ExperienceModel experience});
}
