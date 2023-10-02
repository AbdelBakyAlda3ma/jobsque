import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/has_current_user_widget.dart';
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

  void getStarted() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => BlocProvider<GetCurrentUserBloc>(
          create: (context) =>
              sL.get<GetCurrentUserBloc>()..add(GetCurrentUserEvent()),
          child: const HasCurrenUserWidget(),
        ),
      ),
      (Route<dynamic> route) => false,
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
          onPressed: isLast ? getStarted : next,
        ),
        const VerticalSpace(space: 25),
      ],
    );
  }
}
