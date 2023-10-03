import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/profile_entity.dart';
import '../repos/profile_repository.dart';

class AddProfileLanguageUseCase {
  final ProfileRepository profileRepository;
  AddProfileLanguageUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call({required String language}) {
    return profileRepository.addProfileLanguage(language: language);
  }
}
