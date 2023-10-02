// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import 'package:jobseque/features/jobs/domain/use_cases/filter_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/get_all_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/search_jobs_use_case.dart';

import '../../../../../../core/errors/failure.dart';

part 'job_event.dart';
part 'job_state.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  GetAllJobsUseCase getAllJobsUseCase;
  SearchJobsUseCase searchJobsUseCase;
  FilterJobsUseCase filterJobsUseCase;
  List<JobEntity>? allJobsList;
  String? jobName;
  String? jobLocation;
  String? jobSalary;
  void _clearFilterParameter() {
    jobName = null;
    jobSalary = null;
    jobLocation = null;
  }

  JobBloc({
    required this.getAllJobsUseCase,
    required this.searchJobsUseCase,
    required this.filterJobsUseCase,
  }) : super(JobInitial()) {
    on<JobEvent>((event, emit) async {
      // GetAllJobs event handling
      if (event is GetAllJobsEvent) {
        emit(JobLoading());
        var result = await getAllJobsUseCase();
        result.fold(
          (failure) => emit(
            GetAllJobsFailure(errorMessage: failure.errorMessage),
          ),
          (allJobsList) {
            this.allJobsList = allJobsList;
            emit(
              GetAllJobsSuccess(allJobsList: allJobsList),
            );
          },
        );

        // FilteredJobs event handling
      } else if (event is FilterJobsEvent) {
        emit(JobLoading());
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
        emit(JobLoading());
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
