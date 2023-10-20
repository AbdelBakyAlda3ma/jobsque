part of 'add_active_application_bloc.dart';

sealed class AddActiveApplicationState {}

final class AddActiveApplicationInitial extends AddActiveApplicationState {}

final class AddActiveApplicationSuccess extends AddActiveApplicationState {}
