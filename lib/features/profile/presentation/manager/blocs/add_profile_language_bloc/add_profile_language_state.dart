part of 'add_profile_language_bloc.dart';

abstract class AddProfileLanguageState {}

class AddProfileLanguageInitial extends AddProfileLanguageState {}

class AddProfileLanguageLoading extends AddProfileLanguageState {}

class AddProfileLanguageSuccess extends AddProfileLanguageState {}

class AddProfileLanguageFailure extends AddProfileLanguageState {
  final String errorMsg;

  AddProfileLanguageFailure({required this.errorMsg});
}
