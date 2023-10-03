import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/profile_entity.dart';
import '../repos/profile_repository.dart';

class EditProfileUseCase {
  final ProfileRepository profileRepository;
  EditProfileUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call(
      {required Map<String, String> profileInfo}) {
    return profileRepository.editProfile(profileInfo: profileInfo);
  }
}
