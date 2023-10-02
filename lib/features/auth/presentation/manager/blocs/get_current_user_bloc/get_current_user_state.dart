part of 'get_current_user_bloc.dart';

@immutable
sealed class GetCurrentUserState {}

final class GetCurrentUserInitial extends GetCurrentUserState {}

final class GetCurrentUserLoding extends GetCurrentUserState {}

final class GetCurrentUserSuccess extends GetCurrentUserState {
  final UserEntity user;
  GetCurrentUserSuccess({required this.user});
}

final class GetCurrentUserFailure extends GetCurrentUserState {}
