part of 'login_bloc.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserEntity user;

  LoginSuccess({
    required this.user,
  });
}

final class LoginFailure extends LoginState {
  final String failureMessage;

  LoginFailure({
    required this.failureMessage,
  });
}
