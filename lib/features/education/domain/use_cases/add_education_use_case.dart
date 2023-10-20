import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/education/domain/repos/education_repo.dart';
import '../../data/models/education_model.dart';

class AddEducationUseCase {
  final EducationRepo educationRepo;
  AddEducationUseCase({required this.educationRepo});
  Future<Either<Failure, Unit>> call({required EducationModel education}) {
    return educationRepo.addEducation(education: education);
  }
}
