import 'package:bloc/bloc.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/delete_successed_applied_job_use_case.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
part 'delete_successed_applied_job_event.dart';
part 'delete_successed_applied_job_state.dart';

class DeleteSuccessedAppliedJobBloc extends Bloc<DeleteSuccessedAppliedJobEvent,
    DeleteSuccessedAppliedJobState> {
  DeleteSuccessedAppliedJobUseCase deleteSuccessedAppliedJobUseCase;
  DeleteSuccessedAppliedJobBloc({
    required this.deleteSuccessedAppliedJobUseCase,
  }) : super(DeleteSuccessedAppliedJobInitial()) {
    on<DeleteSuccessedAppliedJobEvent>((event, emit) async {
      await deleteSuccessedAppliedJobUseCase(
        successedAppliedJob: event.successedAppliedJob,
      );
      emit(DeleteSuccessedAppliedJobDone());
    });
  }
}
