import 'package:bloc/bloc.dart';
import '../../../../domain/entities/profile_entity.dart';
import '../../../../domain/use_cases/get_profile_use_case.dart';
part 'get_profile_event.dart';
part 'get_profile_state.dart';

class GetProfileBloc extends Bloc<GetProfileEvent, GetProfileState> {
  final GetProfileUseCase getProfileUseCase;
  bool isCompletedProfile;

  GetProfileBloc({required this.getProfileUseCase})
      : isCompletedProfile = false,
        super(GetProfileInitial()) {
    on<GetProfileEvent>((event, emit) async {
      emit(GetProfileLoading());
      final result = await getProfileUseCase.call();
      result.fold(
          (failure) => emit(GetProfileFailure(errorMsg: failure.errorMessage)),
          (profile) {
        isCompletedProfile = profile.isCompleted;
        emit(GetProfileSuccess(profile: profile));
      });
    });
  }
}
