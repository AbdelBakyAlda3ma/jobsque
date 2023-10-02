import 'package:dartz/dartz.dart';
import 'package:jobseque/features/auth/domain/repositories/auth_repository.dart';
import '../../../../core/errors/failure.dart';
import '../entities/user_entity.dart';

class LoginUseCase {
  final AuthRepository authRepo;

  LoginUseCase({required this.authRepo});
  Future<Either<Failure, UserEntity>> call({required Map loginData}) async {
    return await authRepo.loginUser(loginData: loginData);
  }
}
