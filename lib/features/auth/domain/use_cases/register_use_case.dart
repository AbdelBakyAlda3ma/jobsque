import 'package:dartz/dartz.dart';
import 'package:jobseque/features/auth/domain/repositories/auth_repository.dart';
import '../../../../core/errors/failure.dart';
import '../entities/user_entity.dart';

class RegisterUseCase {
  final AuthRepository authRepo;

  RegisterUseCase({required this.authRepo});
  Future<Either<Failure, UserEntity>> call({required Map registerData}) async {
    return await authRepo.registerUser(registerData: registerData);
  }
}
