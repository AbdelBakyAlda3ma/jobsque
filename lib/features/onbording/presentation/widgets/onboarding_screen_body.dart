import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_step_three.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_step_two.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_step_one.dart';
import 'onboarding_primary_button.dart';
import 'onboarding_smooth_page_indicator.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({
    super.key,
  });

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  late PageController controller;
  bool isLast = false;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void next() {
    controller.nextPage(
      duration: const Duration(milliseconds: 450),
      curve: Curves.linear,
    );
  }

  void getStarted(BuildContext context) {
    context.router.pushAndPopUntil(
      const WhichWillLaunchWidgetRoute(),
      predicate: (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                value == 2 ? isLast = true : isLast = false;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              OnboardingStepOne(),
              OnboardingStepTwo(),
              OnboardingStepThree(),
            ],
          ),
        ),
        OnboardingSmoothPageIndicator(
          controller: controller,
        ),
        const VerticalSpace(space: 20),
        OnboardingPrimaryButton(
          text: isLast ? 'Get Started' : 'Next',
          onPressed: () {
            isLast ? getStarted(context) : next();
          },
        ),
        const VerticalSpace(space: 25),
      ],
    );
  }
}
