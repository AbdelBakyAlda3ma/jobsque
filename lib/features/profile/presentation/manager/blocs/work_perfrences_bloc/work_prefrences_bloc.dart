import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/use_cases/work_prefrences_use_case.dart';
part 'work_prefrences_event.dart';
part 'work_prefrences_state.dart';

class WorkPrefrencesBloc
    extends Bloc<WorkPrefrencesEvent, WorkPrefrencesState> {
  WorkPreferencesUseCase workPreferencesUseCase;
  bool? isRemote;
  List<String>? preferedCountriesToWork = [];
  List<String>? interestedWork = [];

  WorkPrefrencesBloc({required this.workPreferencesUseCase})
      : super(WorkPrefrencesInitial()) {
    on<WorkPrefrencesEvent>((event, emit) async {
      emit(WorkPrefrencesLoading());
      final result = await workPreferencesUseCase.call(
        workPreferences: {
          'interestedWork': interestedWork,
          'offlinePlace': preferedCountriesToWork,
          'remotePlace': isRemote,
        },
      );
      result.fold(
        (failure) =>
            emit(WorkPrefrencesFailure(errorMsg: failure.errorMessage)),
        (_) => emit(WorkPrefrencesSuccess()),
      );
    });
  }
}
