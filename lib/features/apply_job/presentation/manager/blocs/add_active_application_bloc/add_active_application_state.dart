part of 'add_active_application_bloc.dart';

sealed class AddActiveApplicationState extends Equatable {
  const AddActiveApplicationState();
  
  @override
  List<Object> get props => [];
}

final class AddActiveApplicationInitial extends AddActiveApplicationState {}
