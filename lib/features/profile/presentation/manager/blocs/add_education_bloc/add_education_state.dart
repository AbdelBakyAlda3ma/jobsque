part of 'add_education_bloc.dart';

sealed class AddEducationState {}

final class AddEducationInitial extends AddEducationState {}

class AddEducationLoading extends AddEducationState {}

class AddEducationSuccess extends AddEducationState {}

class AddEducationFailure extends AddEducationState {
  final String errorMsg;

  AddEducationFailure({required this.errorMsg});
}
