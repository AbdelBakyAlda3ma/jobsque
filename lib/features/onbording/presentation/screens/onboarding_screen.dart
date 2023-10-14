import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_screen_app_bar.dart';
import 'package:jobseque/features/onbording/presentation/widgets/onboarding_screen_body.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: OnboardingScreenAppBar(),
        body: OnboardingScreenBody(),
      ),
    );
  }
}
