import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_profile_screen_body.dart';

@RoutePage()
class TwoStepVerificationProfileScreen extends StatelessWidget {
  const TwoStepVerificationProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Two-step verification'),
        body: TwoStepVerificationProfileScreenBody(),
      ),
    );
  }
}
