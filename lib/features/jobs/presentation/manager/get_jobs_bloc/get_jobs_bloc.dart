import 'package:bloc/bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/use_cases/get_all_jobs_use_case.dart';

part 'get_jobs_event.dart';
part 'get_jobs_state.dart';

class GetJobsBloc extends Bloc<GetJobsEvent, GetJobsState> {
  GetAllJobsUseCase getAllJobsUseCase;

  GetJobsBloc({
    required this.getAllJobsUseCase,
  }) : super(GetJobsInitial()) {
    on<GetJobsEvent>((event, emit) async {
      emit(GetJobsLoading());
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
  }
}
