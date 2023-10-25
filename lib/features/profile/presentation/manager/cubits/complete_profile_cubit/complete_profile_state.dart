part of 'complete_profile_cubit.dart';

sealed class CompleteProfileState {}

final class CompleteProfileCubitInitial extends CompleteProfileState {}

final class CompleteProfileCubitLoading extends CompleteProfileState {}

final class CompleteProfileCubitFailure extends CompleteProfileState {
  String errorMsg;
  CompleteProfileCubitFailure({
    required this.errorMsg,
  });
}

final class CompletedProfile extends CompleteProfileState {
  bool completionState;

  CompletedProfile({
    required this.completionState,
  });
}

final class InCompletedProfileState extends CompleteProfileState {
  bool educationCompletion;
  bool experienceCompletion;
  bool personalDetailsCompletion;
  bool portfolioCompletion;
  InCompletedProfileState({
    required this.educationCompletion,
    required this.experienceCompletion,
    required this.personalDetailsCompletion,
    required this.portfolioCompletion,
  });
}
