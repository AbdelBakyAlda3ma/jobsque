part of 'search_bloc.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchedJobsSuccess extends SearchState {
  final List<JobEntity> searchedJobsList;

  SearchedJobsSuccess({required this.searchedJobsList});
}

final class SearchedJobsFailure extends SearchState {}

final class FilteredSearchedNotFoundJobsFailure extends SearchState {}

final class FilteredJobsSuccess extends SearchState {
  final List<JobEntity> filteredJobsList;

  FilteredJobsSuccess({required this.filteredJobsList});
}

final class FilteredSearchInvalidInputJobsFailure extends SearchState {
  final String errorMessage;
  FilteredSearchInvalidInputJobsFailure({required this.errorMessage});
}
