import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/use_cases/get_profile_image_use_case.dart';
part 'get_profile_image_event.dart';
part 'get_profile_image_state.dart';

class GetProfileImageBloc
    extends Bloc<GetProfileImageEvent, GetProfileImageState> {
  GetProfileImageUseCase getProfileImageUseCase;

  GetProfileImageBloc({
    required this.getProfileImageUseCase,
  }) : super(GetProfileImageInitial()) {
    on<GetProfileImageEvent>(
      (event, emit) {
        emit(GetProfileImageLoading());
        var result = getProfileImageUseCase();
        result.fold(
          (failure) => emit(
            GetProfileImageFailure(
              errMsg: failure.errorMessage,
            ),
          ),
          (imagePath) => emit(
            GetProfileImageSuccess(
              imagePath: imagePath,
            ),
          ),
        );
      },
    );
  }
}
