import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_background.dart';
import 'onboarding_rich_text.dart';
import 'onboarding_ordinary_text.dart';

class OnboardingCustomStep extends StatelessWidget {
  final String backgroundImage;
  final String beginingOfText;
  final String differentText;
  final String? endOfText;
  final String ordinaryText;

  const OnboardingCustomStep(
      {super.key,
      required this.backgroundImage,
      required this.beginingOfText,
      required this.differentText,
      this.endOfText,
      required this.ordinaryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingBackground(
          backgroundImage: backgroundImage,
        ),
        const VerticalSpace(space: 24),
        OnboardingRichText(
          beginingOfRichText: beginingOfText,
          differentRichText: differentText,
          endOfRichText: endOfText,
        ),
        const VerticalSpace(space: 12),
        OnboardingOrdinaryText(
          ordinaryText: ordinaryText,
        ),
      ],
    );
  }
}
