import 'package:dartz/dartz.dart';
import 'package:jobseque/features/profile/domain/repos/profile_repository.dart';
import '../../../../core/errors/failure.dart';
import '../entities/profile_entity.dart';

class AddPersonalDetailsUseCase {
  ProfileRepository profileRepository;
  AddPersonalDetailsUseCase({required this.profileRepository});
  Future<Either<Failure, ProfileEntity>> call(
      {required Map<String, String> personalDetails}) {
    return profileRepository.addPersonalDetails(
        personalDetails: personalDetails);
  }
}
