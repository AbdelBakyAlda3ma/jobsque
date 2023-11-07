import 'package:bloc/bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/use_cases/show_submitted_jobs.dart';
part 'show_submitted_jobs_event.dart';
part 'show_submitted_jobs_state.dart';

class ShowSubmittedJobsBloc
    extends Bloc<ShowSubmittedJobsEvent, ShowSubmittedJobsState> {
  ShowSubmittedJobsUseCase showSubmittedJobsUseCase;
  ShowSubmittedJobsBloc({
    required this.showSubmittedJobsUseCase,
  }) : super(ShowSubmittedJobsInitial()) {
    on<ShowSubmittedJobsEvent>(
      (event, emit) {
        emit(ShowSubmittedJobsLoading());
        var result = showSubmittedJobsUseCase();
        result.fold(
          (failure) => emit(
            NoSubmittedJobsYetState(),
          ),
          (submittedJobs) => emit(
            ShowSubmittedJobsSuccess(
              submittedJobs: submittedJobs,
            ),
          ),
        );
      },
    );
  }
}
