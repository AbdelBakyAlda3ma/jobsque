part of 'job_bloc.dart';

sealed class JobState {}

final class JobInitial extends JobState {}

final class JobLoading extends JobState {}

final class GetAllJobsSuccess extends JobState {
  final List<JobEntity> allJobsList;

  GetAllJobsSuccess({required this.allJobsList});
}

final class GetAllJobsFailure extends JobState {
  final String errorMessage;
  GetAllJobsFailure({required this.errorMessage});
}
