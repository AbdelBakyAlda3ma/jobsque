import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> loginUser({required Map loginData});
  Future<Either<Failure, UserEntity>> registerUser({required Map registerData});
  Future<Either<Failure, UserEntity>> getCurrentUser();
  Future<Either<Failure, UserEntity>> changePassword(
      {required String password});
  Future<Either<Failure, bool>> logout();
}
