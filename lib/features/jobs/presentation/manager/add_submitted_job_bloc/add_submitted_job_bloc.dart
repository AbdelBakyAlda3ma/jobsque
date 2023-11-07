import 'package:bloc/bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/use_cases/add_submitted_job_use_case.dart';

part 'add_submitted_job_event.dart';
part 'add_submitted_job_state.dart';

class AddSubmittedJobBloc
    extends Bloc<AddSubmittedJobEvent, AddSubmittedJobState> {
  AddSubmittedJobUseCase addSubmittedJobUseCase;
  AddSubmittedJobBloc({
    required this.addSubmittedJobUseCase,
  }) : super(AddSubmittedJobInitial()) {
    on<AddSubmittedJobEvent>((event, emit) async {
      await addSubmittedJobUseCase(
        job: event.job,
      );
      emit(
        AddSubmittedJobDone(),
      );
    });
  }
}
