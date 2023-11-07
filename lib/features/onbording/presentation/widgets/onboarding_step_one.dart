import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_images.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_custom_step.dart';

class OnboardingStepOne extends StatelessWidget {
  const OnboardingStepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingCustomStep(
        backgroundImage: AppImages.onboardingStepOneBackground,
        beginingOfText: 'Find a job, and ',
        differentText: 'start building ',
        endOfText: 'your career from now on',
        ordinaryText:
            'Explore over 25,924 available job roles and upgrade your operator now.');
  }
}
