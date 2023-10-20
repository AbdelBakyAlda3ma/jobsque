import 'package:bloc/bloc.dart';
import 'package:jobseque/core/strings/messages.dart';
import '../../../../domain/use_cases/add_personal_details_use_case.dart';
part 'add_personal_details_event.dart';
part 'add_personal_details_state.dart';

class AddPersonalDetailsBloc
    extends Bloc<AddPersonalDetailsEvent, AddPersonalDetailsState> {
  final AddPersonalDetailsUseCase addPersonalDetailsUseCase;
  String name = '';
  String bio = '';
  String address = '';
  String phoneNumber = '';

  AddPersonalDetailsBloc({required this.addPersonalDetailsUseCase})
      : super(AddPersonalDetailsInitial()) {
    on<AddPersonalDetailsEvent>((event, emit) async {
      emit(AddPersonalDetailsLoading());
      final result = await addPersonalDetailsUseCase.call(
        personalDetails: {
          'name': name,
          'bio': bio,
          'address': address,
          'phoneNumber': phoneNumber,
        },
      );
      result.fold(
        (failure) =>
            emit(AddPersonalDetailsFailure(errorMsg: failure.errorMessage)),
        (_) => emit(AddPersonalDetailsSuccess(successMsg: ADD_SUSCESS_MESSAGE)),
      );
    });
  }
}
