import 'package:bloc/bloc.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/show_active_applied_jobs_use_case.dart';
part 'show_active_applied_jobs_event.dart';
part 'show_active_applied_jobs_state.dart';

class ShowActiveAppliedJobsBloc
    extends Bloc<ShowActiveAppliedJobsEvent, ShowActiveAppliedJobsState> {
  ShowActiveAppliedJobsUseCase showActiveAppliedJobsUseCase;
  ShowActiveAppliedJobsBloc({
    required this.showActiveAppliedJobsUseCase,
  }) : super(ShowActiveAppliedJobsInitial()) {
    on<ShowActiveAppliedJobsEvent>((event, emit) {
      var listOfActiveAppliedJobs = showActiveAppliedJobsUseCase();
      emit(
        ShowActiveAppliedJobsSuccess(
          listOfActiveAppliedJobs: listOfActiveAppliedJobs,
        ),
      );
    });
  }
}
