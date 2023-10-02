import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/assets_images.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_custom_step.dart';

class OnboardingStepThree extends StatelessWidget {
  const OnboardingStepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingCustomStep(
        backgroundImage: AssetsImages.onboardingStepThreeBackground,
        beginingOfText: "Get the best ",
        differentText: "choice for the job ",
        endOfText: "you've always dreamed of",
        ordinaryText:
            'The better the skills you have, the greater the good job opportunities for you.');
  }
}
