import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';
import 'package:jobseque/features/profile/domain/use_cases/complete_profile_use_case.dart';
part 'complete_profile_state.dart';

class CompleteProfileCubit extends Cubit<CompleteProfileState> {
  CompleteProfileUseCase completeProfileUseCase;
  ProfileEntity _profile;
  int completionProgeressIndicator;

  CompleteProfileCubit({
    required this.completeProfileUseCase,
  })  : _profile = completeProfileUseCase(),
        completionProgeressIndicator = 0,
        super(CompleteProfileCubitInitial());

  getProfileCompletion() {
    _profile = completeProfileUseCase();
    completionProgeressIndicator = _completionProgress();

    if (_profile.isCompleted) {
      emit(
        CompletionState(
          completionState: true,
        ),
      );
    } else {
      log('Education  ${_profile.education != null}');
      log('Personal Details  ${_profile.personalDetailed != null}');
      log('Experiece  ${_profile.experience != null}');
      log('Portfolio  ${_profile.numbersOfPortfolios != 0}');
      log('Progress Indicator $completionProgeressIndicator');
      emit(
        InCompletionState(
          educationCompletion: _profile.education != null,
          experienceCompletion: _profile.experience != null,
          personalDetailsCompletion: _profile.personalDetailed != null,
          portfolioCompletion: _profile.numbersOfPortfolios != 0,
        ),
      );
    }
  }

  int _completionProgress() {
    int progressIndicator = 0;
    List<bool> completionItemsList = [
      _profile.experience != null,
      _profile.personalDetailed != null,
      _profile.numbersOfPortfolios != 0,
      _profile.education != null,
    ];
    for (var completionItem in completionItemsList) {
      if (completionItem) {
        progressIndicator += 1;
      }
    }
    log("Progress indicator from InComplete State $progressIndicator");
    return progressIndicator;
  }
}
