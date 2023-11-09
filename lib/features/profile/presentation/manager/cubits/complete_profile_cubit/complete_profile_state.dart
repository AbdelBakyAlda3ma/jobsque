part of 'complete_profile_cubit.dart';

sealed class CompleteProfileState {}

class CompleteProfileCubitInitial extends CompleteProfileState {}

class CompleteProfileCubitLoading extends CompleteProfileState {}

class CompleteProfileCubitFailure extends CompleteProfileState {
  String errorMsg;
  CompleteProfileCubitFailure({
    required this.errorMsg,
  });
}

class CompletedProfile extends CompleteProfileState {
  bool completionState;

  CompletedProfile({
    required this.completionState,
  });
}

class InCompletedProfileState extends CompleteProfileState {
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
