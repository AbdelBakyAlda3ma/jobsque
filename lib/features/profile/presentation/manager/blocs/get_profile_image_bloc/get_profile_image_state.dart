part of 'get_profile_image_bloc.dart';

sealed class GetProfileImageState {}

final class GetProfileImageInitial extends GetProfileImageState {}

final class GetProfileImageLoading extends GetProfileImageState {}

final class GetProfileImageSuccess extends GetProfileImageState {
  String imagePath;
  GetProfileImageSuccess({
    required this.imagePath,
  });
}

final class GetProfileImageFailure extends GetProfileImageState {
  String errMsg;
  GetProfileImageFailure({
    required this.errMsg,
  });
}
