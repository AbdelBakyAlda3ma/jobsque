import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';

class TwoStepVerificationAddPhoneNumberSendCodeButton extends StatelessWidget {
  const TwoStepVerificationAddPhoneNumberSendCodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(onPressed: () {}, text: 'Send Code'),
    );
  }
}
