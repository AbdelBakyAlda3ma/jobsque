part of 'change_password_bloc.dart';

sealed class ChangePasswordState {}

final class ChangePasswordInitial extends ChangePasswordState {}

final class ChangePasswordLoading extends ChangePasswordState {}

final class ChangePasswordFailure extends ChangePasswordState {
  final String errorMessage;
  ChangePasswordFailure({required this.errorMessage});
}

final class ChangePasswordSuccess extends ChangePasswordState {}
