import 'package:bloc/bloc.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/apply_job_use_case.dart';
part 'apply_job_event.dart';
part 'apply_job_state.dart';

class ApplyJobBloc extends Bloc<ApplyJobEvent, ApplyJobState> {
  ApplyJobUseCase applyJobUseCase;
  ApplyJobEntity applyJobEntity;
  ApplyJobBloc({
    required this.applyJobUseCase,
  })  : applyJobEntity = ApplyJobEntity(),
        super(ApplyJobInitial()) {
    on<ApplyJobEvent>((event, emit) async {
      emit(ApplyJobLoading());
      var result = await applyJobUseCase(applyJobEntity: applyJobEntity);
      result.fold(
        (failure) => emit(
          ApplyJobFailure(
            errorMsg: failure.errorMessage,
          ),
        ),
        (_) => emit(
          ApplyJobSuccess(),
        ),
      );
    });
  }
}
