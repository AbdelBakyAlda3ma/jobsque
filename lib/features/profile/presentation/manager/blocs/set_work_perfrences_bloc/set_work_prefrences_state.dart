part of 'set_work_prefrences_bloc.dart';

sealed class SetWorkPrefrencesState {}

final class SetWorkPrefrencesInitial extends SetWorkPrefrencesState {}

final class SetWorkPrefrencesLoading extends SetWorkPrefrencesState {}

final class SetWorkPrefrencesSuccess extends SetWorkPrefrencesState {}

final class SetWorkPrefrencesFailure extends SetWorkPrefrencesState {
  final String errorMsg;
  SetWorkPrefrencesFailure({required this.errorMsg});
}
