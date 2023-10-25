import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';
import 'package:jobseque/features/profile/domain/repos/profile_repository.dart';

class CompleteProfileUseCase {
  ProfileRepository profileRepository;
  CompleteProfileUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call() {
    return profileRepository.completeProfile();
  }
}
