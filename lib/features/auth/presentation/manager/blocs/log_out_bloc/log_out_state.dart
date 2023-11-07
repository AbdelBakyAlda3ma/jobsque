part of 'log_out_bloc.dart';

sealed class LogOutState {}

class LogOutInitial extends LogOutState {}

class LogOutLoading extends LogOutState {}

class LogOutSuccess extends LogOutState {}

class LogOutFailure extends LogOutState {
  String errMsg;
  LogOutFailure({required this.errMsg});
}
