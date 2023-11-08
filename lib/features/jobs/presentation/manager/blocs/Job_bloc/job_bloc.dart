// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/use_cases/get_all_jobs_use_case.dart';
part 'job_event.dart';
part 'job_state.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  GetAllJobsUseCase getAllJobsUseCase;

  JobBloc({
    required this.getAllJobsUseCase,
  }) : super(JobInitial()) {
    on<JobEvent>((event, emit) async {
      emit(JobLoading());
      var result = await getAllJobsUseCase();
      result.fold(
        (failure) => emit(
          GetAllJobsFailure(errorMessage: failure.errorMessage),
        ),
        (allJobsList) {
          emit(
            GetAllJobsSuccess(allJobsList: allJobsList),
          );
        },
      );
    });
    // FilteredJobs event handling
  }
}
