part of 'work_prefrences_bloc.dart';

sealed class WorkPrefrencesState {}

final class WorkPrefrencesInitial extends WorkPrefrencesState {}

final class WorkPrefrencesLoading extends WorkPrefrencesState {}

final class WorkPrefrencesSuccess extends WorkPrefrencesState {}

final class WorkPrefrencesFailure extends WorkPrefrencesState {
  final String errorMsg;
  WorkPrefrencesFailure({required this.errorMsg});
}
