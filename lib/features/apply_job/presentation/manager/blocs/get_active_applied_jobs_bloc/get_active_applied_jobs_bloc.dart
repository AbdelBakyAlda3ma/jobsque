import 'package:bloc/bloc.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/get_active_applied_jobs_use_case.dart';

part 'get_active_applied_jobs_event.dart';
part 'get_active_applied_jobs_state.dart';

class GetActiveAppliedJobsBloc
    extends Bloc<GetActiveAppliedJobsEvent, GetActiveAppliedJobsState> {
  GetActiveAppliedJobsUseCase getActiveAppliedJobsUseCase;
  GetActiveAppliedJobsBloc({
    required this.getActiveAppliedJobsUseCase,
  }) : super(GetActiveAppliedJobsInitial()) {
    on<GetActiveAppliedJobsEvent>(
      (event, emit) {
        emit(GetActiveAppliedJobsLoading());
        var result = getActiveAppliedJobsUseCase();
        result.fold(
          (failure) => emit(NoActiveAppliedJobs()),
          (listOfActiveJobs) => emit(
            GetActiveAppliedJobsSuccess(
              listOfactiveJobs: listOfActiveJobs,
            ),
          ),
        );
      },
    );
  }
}
