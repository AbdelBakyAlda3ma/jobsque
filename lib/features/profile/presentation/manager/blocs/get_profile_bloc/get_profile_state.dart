part of 'get_profile_bloc.dart';

abstract class GetProfileState {}

class GetProfileInitial extends GetProfileState {}

class GetProfileLoading extends GetProfileState {}

class GetProfileSuccess extends GetProfileState {
  final ProfileEntity profile;

  GetProfileSuccess({required this.profile});
}

class GetProfileFailure extends GetProfileState {
  final String errorMsg;

  GetProfileFailure({required this.errorMsg});
}
