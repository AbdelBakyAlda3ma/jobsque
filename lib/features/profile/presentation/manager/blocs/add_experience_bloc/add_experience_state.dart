part of 'add_experience_bloc.dart';

sealed class AddExperienceState {}

final class AddExperienceInitial extends AddExperienceState {}

class AddExperienceLoading extends AddExperienceState {}

class AddExperienceSuccess extends AddExperienceState {}

class AddExperienceFailure extends AddExperienceState {
  final String errorMsg;

  AddExperienceFailure({required this.errorMsg});
}
