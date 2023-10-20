part of 'show_active_applied_jobs_bloc.dart';

sealed class ShowActiveAppliedJobsState extends Equatable {
  const ShowActiveAppliedJobsState();
  
  @override
  List<Object> get props => [];
}

final class ShowActiveAppliedJobsInitial extends ShowActiveAppliedJobsState {}
