import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/use_cases/add_education_use_case.dart';
import '../../../../data/models/education_model.dart';
part 'add_education_event.dart';
part 'add_education_state.dart';

class AddEducationBloc extends Bloc<AddEducationEvent, AddEducationState> {
  final AddEducationUseCase addEducationUseCase;
  AddEducationBloc({required this.addEducationUseCase})
      : super(AddEducationInitial()) {
    on<AddEducationEvent>((event, emit) async {
      emit(AddEducationLoading());
      final result = await addEducationUseCase.call(education: event.education);
      result.fold(
        (failure) => emit(AddEducationFailure(errorMsg: failure.errorMessage)),
        (_) => emit(AddEducationSuccess()),
      );
    });
  }
}
