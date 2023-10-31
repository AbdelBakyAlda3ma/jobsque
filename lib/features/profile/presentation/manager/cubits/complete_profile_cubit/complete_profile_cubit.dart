import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';
import 'package:jobseque/features/profile/domain/use_cases/complete_profile_use_case.dart';
part 'complete_profile_state.dart';

class CompleteProfileCubit extends Cubit<CompleteProfileState> {
  CompleteProfileUseCase completeProfileUseCase;
  int completionProgeressIndicator;

  CompleteProfileCubit({
    required this.completeProfileUseCase,
  })  : completionProgeressIndicator = 0,
        super(CompleteProfileCubitInitial());

  void getProfileCompletion() async {
    emit(CompleteProfileCubitLoading());
    var result = await completeProfileUseCase();
    result.fold(
        (failure) => emit(
              CompleteProfileCubitFailure(
                errorMsg: failure.errorMessage,
              ),
            ), (profile) {
      completionProgeressIndicator = _completionProgress(profile);
      if (profile.isCompleted) {
        emit(
          CompletedProfile(
            completionState: true,
          ),
        );
      } else {
        // log('Education  ${profile.education != null}');
        // log('Personal Details  ${profile.personalDetailed != null}');
        // log('Experiece  ${profile.experience != null}');
        log('Portfolio  ${profile.numbersOfPortfolios}');
        // log('Portfolio  ${profile.numbersOfPortfolios != 0}');
        // log('Portfolio  ${profile.numbersOfPortfolios != 0}');
        log('Progress Indicator $completionProgeressIndicator');
        emit(
          InCompletedProfileState(
            educationCompletion: profile.education != null,
            experienceCompletion: profile.experience != null,
            personalDetailsCompletion: profile.personalDetailed != null,
            portfolioCompletion: profile.numbersOfPortfolios != 0,
          ),
        );
      }
    });
  }

  int _completionProgress(ProfileEntity profile) {
    int progressIndicator = 0;
    List<bool> completionItemsList = [
      profile.experience != null,
      profile.personalDetailed != null,
      profile.numbersOfPortfolios != 0,
      profile.education != null,
    ];
    for (var completionItem in completionItemsList) {
      if (completionItem) {
        progressIndicator += 1;
      }
    }
    log("Progress indicator from InComplete State $progressIndicator");
    return progressIndicator;
  }

  void checkIfProfileCompleted() async {
    emit(CompleteProfileCubitLoading());
    var result = await completeProfileUseCase();
    result.fold(
        (failure) => emit(
              CompleteProfileCubitFailure(
                errorMsg: failure.errorMessage,
              ),
            ), (profile) {
      completionProgeressIndicator = _completionProgress(profile);
      if (profile.isCompleted) {
        emit(
          ProfileIsAlreadyCompleted(),
        );
      } else {
        emit(
          ProfileIsNotCompleted(),
        );
      }
    });
  }
}
