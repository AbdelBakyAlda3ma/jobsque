import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/profile/domain/repos/profile_repository.dart';

class GetProfileImageUseCase {
  ProfileRepository profileRepository;
  GetProfileImageUseCase({
    required this.profileRepository,
  });
  Either<Failure, String> call() {
    return profileRepository.getProfileImage();
  }
}
