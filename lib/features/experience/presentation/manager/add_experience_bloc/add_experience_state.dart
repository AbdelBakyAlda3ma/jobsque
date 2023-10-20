part of 'add_experience_bloc.dart';

sealed class AddExperienceState {}

final class AddExperienceInitial extends AddExperienceState {}

class AddExperienceLoading extends AddExperienceState {}

class AddExperienceSuccess extends AddExperienceState {
  final String successMsg;

  AddExperienceSuccess({required this.successMsg});
}

class AddExperienceFailure extends AddExperienceState {
  final String errorMsg;

  AddExperienceFailure({required this.errorMsg});
}
