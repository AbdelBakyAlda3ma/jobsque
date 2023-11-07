import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/auth/domain/repositories/auth_repository.dart';

class LogOutUseCase {
  AuthRepository authRepository;
  LogOutUseCase({
    required this.authRepository,
  });
  Future<Either<Failure, bool>> call() async {
    return await authRepository.logout();
  }
}
