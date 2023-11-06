import 'package:flutter/material.dart';
import 'package:jobseque/core/strings/dummy_string_data.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_body_explain_text.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_body_on_off_switch_button.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_select_verification_method_drop_down_list.dart';
import '../../../../core/widgets/vertical_space.dart';

class TwoStepVerificationSelectVerificationMethodBody extends StatelessWidget {
  const TwoStepVerificationSelectVerificationMethodBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TwoStepVerificationBodyOnOffSwitchButton(),
          VerticalSpace(space: 32),
          TwoStepVerificationSelectVerificationMethodDropDownList(),
          VerticalSpace(space: 16),
          TwoStepVerificationInitialBodyExplainText(
            text: kTwoStepVerificationMethodBodyNote,
          ),
        ],
      ),
    );
  }
}
