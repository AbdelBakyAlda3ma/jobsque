import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';
import 'package:jobseque/features/auth/domain/repositories/auth_repository.dart';

class GetCurrenUserUseCase {
  AuthRepository authRepository;
  GetCurrenUserUseCase({
    required this.authRepository,
  });

  Future<Either<Failure, UserEntity>> call() async {
    return await authRepository.getCurrentUser();
  }
}
