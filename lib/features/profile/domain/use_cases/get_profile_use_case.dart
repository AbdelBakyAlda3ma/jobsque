import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/profile_entity.dart';
import '../repos/profile_repository.dart';

class GetProfileUseCase {
  final ProfileRepository profileRepository;
  GetProfileUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call() {
    return profileRepository.getProfile();
  }
}
