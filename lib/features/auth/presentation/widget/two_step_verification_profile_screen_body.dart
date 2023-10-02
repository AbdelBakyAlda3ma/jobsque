import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_enter_pin_code_body.dart';

class TwoStepVerificationProfileScreenBody extends StatelessWidget {
  const TwoStepVerificationProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          VerticalSpace(space: 16),
          TwoStepVerificationEnterPinCodeBody(),
        ],
      ),
    );
  }
}
