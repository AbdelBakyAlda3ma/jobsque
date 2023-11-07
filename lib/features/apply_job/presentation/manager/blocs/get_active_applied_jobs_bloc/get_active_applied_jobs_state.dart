part of 'get_active_applied_jobs_bloc.dart';

sealed class GetActiveAppliedJobsState {}

class GetActiveAppliedJobsInitial extends GetActiveAppliedJobsState {}

class GetActiveAppliedJobsLoading extends GetActiveAppliedJobsState {}

class NoActiveAppliedJobs extends GetActiveAppliedJobsState {}

class GetActiveAppliedJobsSuccess extends GetActiveAppliedJobsState {
  List<ActiveAppliedJobEntity> listOfactiveJobs;
  GetActiveAppliedJobsSuccess({
    required this.listOfactiveJobs,
  });
}
