part of 'show_active_applied_jobs_bloc.dart';

sealed class ShowActiveAppliedJobsState {}

final class ShowActiveAppliedJobsInitial extends ShowActiveAppliedJobsState {}

final class ShowActiveAppliedJobsSuccess extends ShowActiveAppliedJobsState {
  List<ActiveAppliedJobEntity> listOfActiveAppliedJobs;
  ShowActiveAppliedJobsSuccess({
    required this.listOfActiveAppliedJobs,
  });
}
