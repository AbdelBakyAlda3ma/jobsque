part of 'check_if_profile_complete_cubit.dart';

sealed class CheckIfProfileCompleteState {}

class CheckIfProfileCompleteInitial extends CheckIfProfileCompleteState {}

class CheckIfProfileCompleteLoading extends CheckIfProfileCompleteState {}

class CheckIfProfileCompleteFailure extends CheckIfProfileCompleteState {
  String errMsg;
  CheckIfProfileCompleteFailure({
    required this.errMsg,
  });
}

class ProfileIsAlreadyCompleted extends CheckIfProfileCompleteState {}

class ProfileIsNotCompleted extends CheckIfProfileCompleteState {}
