import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_add_phone_number_password_text_field.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_add_phone_number_phone_text_field.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_add_phone_number_send_code_button.dart';

import '../../../../core/widgets/vertical_space.dart';

class TwoStepVerificationAddPhoneNumberBody extends StatelessWidget {
  const TwoStepVerificationAddPhoneNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          TwoStepVerificationAddPhoneNumberPhoneTextField(),
          VerticalSpace(space: 20),
          TwoStepVerificationAddPhoneNumberPasswordTextField(),
          Spacer(),
          TwoStepVerificationAddPhoneNumberSendCodeButton(),
          VerticalSpace(space: 9),
        ],
      ),
    );
  }
}
