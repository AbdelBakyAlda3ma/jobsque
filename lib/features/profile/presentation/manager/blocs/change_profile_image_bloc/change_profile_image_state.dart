part of 'change_profile_image_bloc.dart';

abstract class ChangeProfileImageState {}

class ChangeProfileImageInitial extends ChangeProfileImageState {}

class ChangeProfileImageLoading extends ChangeProfileImageState {}

class ChangeProfileImageSuccess extends ChangeProfileImageState {}

class ChangeProfileImageFailure extends ChangeProfileImageState {
  final String errorMsg;

  ChangeProfileImageFailure({required this.errorMsg});
}
