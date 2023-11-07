part of 'show_submitted_jobs_bloc.dart';

sealed class ShowSubmittedJobsState {}

final class ShowSubmittedJobsInitial extends ShowSubmittedJobsState {}

final class ShowSubmittedJobsLoading extends ShowSubmittedJobsState {}

final class NoSubmittedJobsYetState extends ShowSubmittedJobsState {}

final class ShowSubmittedJobsSuccess extends ShowSubmittedJobsState {
  List<JobEntity> submittedJobs;
  ShowSubmittedJobsSuccess({
    required this.submittedJobs,
  });
}
