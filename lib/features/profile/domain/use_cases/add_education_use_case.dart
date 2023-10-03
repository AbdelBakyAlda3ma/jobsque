import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/profile/domain/entities/education_entity.dart';
import '../../data/models/education_model.dart';
import '../repos/profile_repository.dart';

class AddEducationUseCase {
  final ProfileRepository profileRepository;
  AddEducationUseCase({required this.profileRepository});
  Future<Either<Failure, EducationEntity>> call(
      {required EducationModel education}) {
    return profileRepository.addEducation(education: education);
  }
}
