// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/features/auth/data/models/user_model.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';
import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/local_data_source/auth_local_data_source.dart';
import '../data_sources/remote_data_source/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() async {
    try {
      final currentUser = await localDataSource.getCurrentUser();
      return Right(currentUser);
    } on UserNotFoundException {
      return Left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginUser(
      {required Map loginData}) async {
    if (await networkInfo.isConnected) {
      try {
        final UserModel user =
            await remoteDataSource.loginUser(loginData: loginData);

        localDataSource.saveUser(user);
        return Right(user);
      } on DioException catch (e) {
        return Left(ServerFailure.fromDio(e));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> registerUser(
      {required Map registerData}) async {
    if (await networkInfo.isConnected) {
      try {
        final user =
            await remoteDataSource.registerUser(registerData: registerData);

        localDataSource.saveUser(user);
        return Right(user);
      } on DioException catch (e) {
        return Left(ServerFailure.fromDio(e));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      await localDataSource.logOut();
      // await remoteDataSource.logOut();
      return const Right(true);
    } on UserNotFoundException {
      return Left(UserNotFoundFailure());
    } on OfflineException {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> changePassword(
      {required String password}) async {
    if (await networkInfo.isConnected) {
      try {
        UserModel userModel =
            await remoteDataSource.changePassword(password: password);
        return Right(userModel);
      } on DioException catch (e) {
        return Left(ServerFailure.fromDio(e));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
