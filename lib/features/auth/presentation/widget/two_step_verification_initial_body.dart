import 'package:flutter/material.dart';
import 'package:jobseque/core/strings/dummy_string_data.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_body_on_off_switch_button.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_body_explain_text.dart';

class TwoStepVerificationInitialBody extends StatelessWidget {
  const TwoStepVerificationInitialBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TwoStepVerificationBodyOnOffSwitchButton(),
        VerticalSpace(space: 32),
        TwoStepVerificationInitialBodyExplainText(
          icon: IconsJobeque.lock,
          text: kTwoStepVerificationInitalBodyfirsText,
        ),
        VerticalSpace(space: 20),
        TwoStepVerificationInitialBodyExplainText(
          icon: IconsJobeque.externaldrive,
          text: kTwoStepVerificationInitalBodySecondText,
        ),
      ],
    );
  }
}
