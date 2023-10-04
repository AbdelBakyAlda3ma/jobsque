import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/use_cases/set_work_prefrences_use_case.dart';
part 'set_work_prefrences_event.dart';
part 'set_work_prefrences_state.dart';

class SetWorkPrefrencesBloc
    extends Bloc<SetWorkPrefrencesEvent, SetWorkPrefrencesState> {
  SetWorkPreferencesUseCase setWorkPreferencesUseCase;

  SetWorkPrefrencesBloc({required this.setWorkPreferencesUseCase})
      : super(SetWorkPrefrencesInitial()) {
    on<SetWorkPrefrencesEvent>((event, emit) async {
      emit(SetWorkPrefrencesLoading());
      final result = await setWorkPreferencesUseCase.call(
          workPreferences: event.workPreferences);
      result.fold(
        (failure) =>
            emit(SetWorkPrefrencesFailure(errorMsg: failure.errorMessage)),
        (_) => emit(SetWorkPrefrencesSuccess()),
      );
    });
  }
}
