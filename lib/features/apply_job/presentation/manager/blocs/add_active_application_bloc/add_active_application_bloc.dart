import 'package:bloc/bloc.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/add_active_application_use_case.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

part 'add_active_application_event.dart';
part 'add_active_application_state.dart';

class AddActiveApplicationBloc
    extends Bloc<AddActiveApplicationEvent, AddActiveApplicationState> {
  final ActiveAppliedJobEntity _activeAppliedJobEntity;
  int applicationStepProgress;
  ApplyJobEntity applyJobEntity;

  AddActiveApplicationUseCase activeApplicationUseCase;
  AddActiveApplicationBloc({
    required this.activeApplicationUseCase,
  })  : _activeAppliedJobEntity = ActiveAppliedJobEntity(),
        applicationStepProgress = 0,
        applyJobEntity = ApplyJobEntity(),
        super(AddActiveApplicationInitial()) {
    on<AddActiveApplicationEvent>((event, emit) {
      activeApplicationUseCase(
        activeAppliedJob: _activeAppliedJobEntity.copyWith(
          job: event.job,
          applicationStepProgress: applicationStepProgress,
          applyJobEntity: applyJobEntity,
        ),
      );
      emit(AddActiveApplicationSuccess());
    });
  }
}
