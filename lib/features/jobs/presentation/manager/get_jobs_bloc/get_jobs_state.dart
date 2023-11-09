part of 'get_jobs_bloc.dart';

sealed class GetJobsState {}

final class GetJobsInitial extends GetJobsState {}

final class GetJobsLoading extends GetJobsState {}

final class GetAllJobsSuccess extends GetJobsState {
  final List<JobEntity> allJobsList;

  GetAllJobsSuccess({required this.allJobsList});
}

final class GetAllJobsFailure extends GetJobsState {
  final String errorMessage;
  GetAllJobsFailure({required this.errorMessage});
}
