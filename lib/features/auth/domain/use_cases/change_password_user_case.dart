import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';

import '../repositories/auth_repository.dart';

class ChangePasswordUseCase {
  ChangePasswordUseCase({
    required this.authRepo,
  });
  final AuthRepository authRepo;
  Future<Either<Failure, UserEntity>> call({required String password}) {
    return authRepo.changePassword(password: password);
  }
}
