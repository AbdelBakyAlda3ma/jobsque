import 'package:bloc/bloc.dart';
import '../../../../data/models/experience_model.dart';
import '../../../../domain/use_cases/add_experience_use_case.dart';
part 'add_experience_event.dart';
part 'add_experience_state.dart';

class AddExperienceBloc extends Bloc<AddExperienceEvent, AddExperienceState> {
  final AddExperienceUseCase addExperienceUseCase;

  AddExperienceBloc({required this.addExperienceUseCase})
      : super(AddExperienceInitial()) {
    on<AddExperienceEvent>((event, emit) async {
      emit(AddExperienceLoading());
      final result =
          await addExperienceUseCase.call(experience: event.experience);
      result.fold(
        (failure) => emit(AddExperienceFailure(errorMsg: failure.errorMessage)),
        (_) => emit(AddExperienceSuccess()),
      );
    });
  }
}
