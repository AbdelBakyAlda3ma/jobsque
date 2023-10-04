import 'package:bloc/bloc.dart';
import '../../../../domain/use_cases/edit_profile_use_case.dart';
part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final EditProfileUseCase editProfileUseCase;

  EditProfileBloc({required this.editProfileUseCase})
      : super(EditProfileInitial()) {
    on<EditProfileEvent>((event, emit) async {
      emit(EditProfileLoading());
      final result =
          await editProfileUseCase.call(profileInfo: event.profileInfo);
      result.fold(
        (failure) => emit(EditProfileFailure(errorMsg: failure.errorMessage)),
        (_) => emit(EditProfileSuccess()),
      );
    });
  }
}
