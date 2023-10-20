import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/experience/data/models/experience_model.dart';
import 'package:jobseque/features/experience/domain/repos/experience_repo.dart';

class AddExperienceUseCase {
  final ExperienceRepo experienceRepo;
  AddExperienceUseCase({required this.experienceRepo});
  Future<Either<Failure, Unit>> call({
    required ExperienceModel experience,
  }) {
    return experienceRepo.addExperience(experience: experience);
  }
}
