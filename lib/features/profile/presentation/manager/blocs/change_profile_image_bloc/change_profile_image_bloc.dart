import 'package:bloc/bloc.dart';
import '../../../../domain/use_cases/change_profile_image_use_case.dart';
part 'change_profile_image_event.dart';
part 'change_profile_image_state.dart';

class ChangeProfileImageBloc
    extends Bloc<ChangeProfileImageEvent, ChangeProfileImageState> {
  final ChangeProfileImageUseCase changeProfileImageUseCase;

  ChangeProfileImageBloc({required this.changeProfileImageUseCase})
      : super(ChangeProfileImageInitial()) {
    on<ChangeProfileImageEvent>((event, emit) async {
      emit(ChangeProfileImageLoading());
      final result = await changeProfileImageUseCase.call();
      result.fold(
        (failure) => emit(
          ChangeProfileImageFailure(
            errorMsg: failure.errorMessage,
          ),
        ),
        (profileImagePath) => emit(
          ChangeProfileImageSuccess(
            profileImage: profileImagePath,
          ),
        ),
      );
    });
  }
}
