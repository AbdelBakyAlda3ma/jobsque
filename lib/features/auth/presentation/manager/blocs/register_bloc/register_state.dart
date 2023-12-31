part of 'register_bloc.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  final UserEntity user;

  RegisterSuccess({
    required this.user,
  });
}

final class RegisterFailure extends RegisterState {
  final String failureMessage;

  RegisterFailure({
    required this.failureMessage,
  });
}
