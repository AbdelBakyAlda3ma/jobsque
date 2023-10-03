import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/profile_entity.dart';
import '../repos/profile_repository.dart';

class SetWorkPreferencesUseCase {
  final ProfileRepository profileRepository;
  SetWorkPreferencesUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call(
      {required Map<String, String> workPreferences}) {
    return profileRepository.setWorkPreferences(
        workPreferences: workPreferences);
  }
}
