import 'package:bloc/bloc.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/use_cases/filter_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/search_jobs_use_case.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchJobsUseCase searchJobsUseCase;
  FilterJobsUseCase filterJobsUseCase;
  String? jobName;
  String? jobLocation;
  String? jobSalary;
  void _clearFilterParameter() {
    jobName = null;
    jobSalary = null;
    jobLocation = null;
  }

  SearchBloc({
    required this.searchJobsUseCase,
    required this.filterJobsUseCase,
  }) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is FilterSearchEvent) {
        emit(SearchLoading());
        var result = await filterJobsUseCase(
          jobName: jobName,
          jobLocation: jobLocation,
          jobSalary: jobSalary,
        );

        result.fold((failure) {
          if (failure is FilterSearchInvalidInputFailure) {
            emit(FilteredSearchInvalidInputJobsFailure(
                errorMessage: failure.errorMessage));
          }
          if (failure is FilteredSearchNotFoundlFailure) {
            emit(FilteredSearchedNotFoundJobsFailure());
          }
        }, (filteredJobsList) {
          _clearFilterParameter();
          emit(FilteredJobsSuccess(filteredJobsList: filteredJobsList));
        });

        // SearchedJobs event handling
      } else if (event is SearchJobsEvent) {
        emit(SearchLoading());
        var result = await searchJobsUseCase(
          jobName: event.searchTopic,
        );
        result.fold(
          (failure) => emit(SearchedJobsFailure()),
          (searchedJobsList) =>
              emit(SearchedJobsSuccess(searchedJobsList: searchedJobsList)),
        );
      }
    });
  }
}
