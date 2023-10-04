part of 'add_personal_details_bloc.dart';

sealed class AddPersonalDetailsState {}

final class AddPersonalDetailsInitial extends AddPersonalDetailsState {}

class AddPersonalDetailsLoading extends AddPersonalDetailsState {}

class AddPersonalDetailsSuccess extends AddPersonalDetailsState {}

class AddPersonalDetailsFailure extends AddPersonalDetailsState {
  final String errorMsg;

  AddPersonalDetailsFailure({required this.errorMsg});
}
