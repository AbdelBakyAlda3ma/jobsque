part of 'add_education_bloc.dart';

sealed class AddEducationState {}

final class AddEducationInitial extends AddEducationState {}

class AddEducationLoading extends AddEducationState {}

class AddEducationSuccess extends AddEducationState {
  final String successMsg;

  AddEducationSuccess({required this.successMsg});
}

class AddEducationFailure extends AddEducationState {
  final String errorMsg;

  AddEducationFailure({required this.errorMsg});
}
