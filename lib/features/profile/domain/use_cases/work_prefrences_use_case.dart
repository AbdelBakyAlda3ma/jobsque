import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/profile_entity.dart';
import '../repos/profile_repository.dart';

class WorkPreferencesUseCase {
  final ProfileRepository profileRepository;
  WorkPreferencesUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call(
      {required Map<String, dynamic> workPreferences}) {
    return profileRepository.workPreferences(workPreferences: workPreferences);
  }
}
