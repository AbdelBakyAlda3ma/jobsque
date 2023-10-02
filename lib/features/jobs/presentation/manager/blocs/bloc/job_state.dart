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

final class SearchedJobsSuccess extends JobState {
  final List<JobEntity> searchedJobsList;

  SearchedJobsSuccess({required this.searchedJobsList});
}

final class SearchedJobsFailure extends JobState {}

final class FilteredSearchedNotFoundJobsFailure extends JobState {}

final class FilteredJobsSuccess extends JobState {
  final List<JobEntity> filteredJobsList;

  FilteredJobsSuccess({required this.filteredJobsList});
}

final class FilteredSearchInvalidInputJobsFailure extends JobState {
  final String errorMessage;
  FilteredSearchInvalidInputJobsFailure({required this.errorMessage});
}
