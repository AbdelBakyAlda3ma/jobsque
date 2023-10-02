import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_profile_screen_body.dart';

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
