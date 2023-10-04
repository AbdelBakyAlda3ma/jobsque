import 'package:bloc/bloc.dart';
import '../../../../domain/use_cases/add_personal_details_use_case.dart';
part 'add_personal_details_event.dart';
part 'add_personal_details_state.dart';

class AddPersonalDetailsBloc
    extends Bloc<AddPersonalDetailsEvent, AddPersonalDetailsState> {
  final AddPersonalDetailsUseCase addPersonalDetailsUseCase;

  AddPersonalDetailsBloc({required this.addPersonalDetailsUseCase})
      : super(AddPersonalDetailsInitial()) {
    on<AddPersonalDetailsEvent>((event, emit) async {
      emit(AddPersonalDetailsLoading());
      final result = await addPersonalDetailsUseCase.call(
          personalDetails: event.personalDetails);
      result.fold(
        (failure) =>
            emit(AddPersonalDetailsFailure(errorMsg: failure.errorMessage)),
        (_) => emit(AddPersonalDetailsSuccess()),
      );
    });
  }
}
