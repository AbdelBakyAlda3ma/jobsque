import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/profile/data/models/experience_model.dart';
import 'package:jobseque/features/profile/domain/entities/experience_entity.dart';
import '../repos/profile_repository.dart';

class AddExperienceUseCase {
  final ProfileRepository profileRepository;
  AddExperienceUseCase({required this.profileRepository});
  Future<Either<Failure, ExperienceEntity>> call(
      {required ExperienceModel experience}) {
    return profileRepository.addExperience(experience: experience);
  }
}
