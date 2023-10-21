import 'package:bloc/bloc.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
part 'compelete_job_application_state.dart';

class CompeleteJobApplicationCubit extends Cubit<CompeleteJobApplicationState> {
  ApplyJobEntity applyJobEntity;
  CompeleteJobApplicationCubit()
      : applyJobEntity = ApplyJobEntity(),
        super(CompeleteJobApplicationInitial());

  void bioInformationStep() {
    if (applyJobEntity.name == null ||
        applyJobEntity.email == null ||
        applyJobEntity.mobile == null) {
      emit(EmptyBioFieldState());
    } else {
      emit(CompleteBioFildsState());
    }
  }

  void typeOfWorkStep() {
    if (applyJobEntity.workType == null) {
      emit(EmptyWorkTypeState());
    } else {
      emit(CompleteWorkTypeState());
    }
  }

  void otherFileStep() {
    if (applyJobEntity.otherFile == null) {
      emit(EmptyOtherFileState());
    } else {
      emit(CompleteOtherFileState());
    }
  }
}
