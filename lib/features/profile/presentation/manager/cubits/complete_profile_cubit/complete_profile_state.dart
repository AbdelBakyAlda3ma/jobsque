part of 'complete_profile_cubit.dart';

sealed class CompleteProfileState {}

final class CompleteProfileCubitInitial extends CompleteProfileState {}

final class CompletionState extends CompleteProfileState {
  bool completionState;

  CompletionState({
    required this.completionState,
  });
}

final class InCompletionState extends CompleteProfileState {
  bool educationCompletion;
  bool experienceCompletion;
  bool personalDetailsCompletion;
  bool portfolioCompletion;
  InCompletionState({
    required this.educationCompletion,
    required this.experienceCompletion,
    required this.personalDetailsCompletion,
    required this.portfolioCompletion,
  });
}
