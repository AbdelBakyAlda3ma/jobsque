import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/education/data/models/education_model.dart';

abstract class EducationRepo {
  Future<Either<Failure, Unit>> addEducation(
      {required EducationModel education});
}
