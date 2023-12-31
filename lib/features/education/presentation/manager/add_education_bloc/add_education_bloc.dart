import 'package:bloc/bloc.dart';
import 'package:jobseque/core/strings/messages.dart';
import 'package:jobseque/features/education/data/models/education_model.dart';
import 'package:jobseque/features/education/domain/use_cases/add_education_use_case.dart';
part 'add_education_event.dart';
part 'add_education_state.dart';

class AddEducationBloc extends Bloc<AddEducationEvent, AddEducationState> {
  final AddEducationUseCase addEducationUseCase;
  EducationModel education = EducationModel();
  AddEducationBloc({required this.addEducationUseCase})
      : super(AddEducationInitial()) {
    on<AddEducationEvent>((event, emit) async {
      emit(AddEducationLoading());
      final result = await addEducationUseCase.call(education: education);
      result.fold(
        (failure) => emit(
          AddEducationFailure(errorMsg: failure.errorMessage),
        ),
        (_) => emit(
          AddEducationSuccess(successMsg: ADD_SUSCESS_MESSAGE),
        ),
      );
    });
  }
}
