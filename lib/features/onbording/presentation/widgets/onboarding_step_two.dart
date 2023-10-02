import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/assets_images.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_custom_step.dart';

class OnboardingStepTwo extends StatelessWidget {
  const OnboardingStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingCustomStep(
        backgroundImage: AssetsImages.onboardingStepTwoBackground,
        beginingOfText: 'Hundreds of jobs are waiting for you to ',
        differentText: 'join together',
        ordinaryText:
            'Immediately join us and start applying for the job you are interested in.');
  }
}
