import 'package:bloc/bloc.dart';
import 'package:jobseque/features/favorites/domain/use_cases/get_favorite_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
part 'get_favorite_jobs_event.dart';
part 'get_favorite_jobs_state.dart';

class GetFavoriteJobsBloc
    extends Bloc<GetFavoriteJobsEvent, GetFavoriteJobsState> {
  GetFavoriteJobsUseCase getFavoriteJobsUseCase;
  GetFavoriteJobsBloc({
    required this.getFavoriteJobsUseCase,
  }) : super(GetFavoriteJobsInitial()) {
    on<GetFavoriteJobsEvent>(
      (event, emit) {
        var result = getFavoriteJobsUseCase();
        result.fold(
          (failure) => emit(
            GetFavoriteJobsFailure(
              errorMsg: failure.errorMessage,
            ),
          ),
          (listOfFavoriteJobs) => emit(
            GetFavoriteJobsSuccess(
              listOfFavoriteJobs: listOfFavoriteJobs,
            ),
          ),
        );
      },
    );
  }
}
