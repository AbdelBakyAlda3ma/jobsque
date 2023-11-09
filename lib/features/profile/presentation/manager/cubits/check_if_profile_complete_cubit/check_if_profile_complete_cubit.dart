import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/use_cases/complete_profile_use_case.dart';
part 'check_if_profile_complete_state.dart';

class CheckIfProfileCompleteCubit extends Cubit<CheckIfProfileCompleteState> {
  CompleteProfileUseCase completeProfileUseCase;

  CheckIfProfileCompleteCubit({
    required this.completeProfileUseCase,
  }) : super(CheckIfProfileCompleteInitial());
  void checkIfProfileCompleted() async {
    emit(CheckIfProfileCompleteLoading());
    var result = await completeProfileUseCase();
    result.fold(
      (failure) => emit(
        CheckIfProfileCompleteFailure(
          errMsg: failure.errorMessage,
        ),
      ),
      (profile) {
        if (profile.isCompleted) {
          emit(
            ProfileIsAlreadyCompleted(),
          );
        } else {
          emit(
            ProfileIsNotCompleted(),
          );
        }
      },
    );
  }
}
