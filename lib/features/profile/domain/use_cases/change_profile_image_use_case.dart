import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../repos/profile_repository.dart';

class ChangeProfileImageUseCase {
  final ProfileRepository profileRepository;
  ChangeProfileImageUseCase({required this.profileRepository});
  Future<Either<Failure, String?>> call() {
    return profileRepository.changeProfileImage();
  }
}
