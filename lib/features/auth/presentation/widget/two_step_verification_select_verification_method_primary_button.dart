import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';

class TwoStepVerificationSelectVerificationMethodPrimaryButton
    extends StatelessWidget {
  const TwoStepVerificationSelectVerificationMethodPrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(onPressed: () {}, text: 'Next'),
    );
  }
}
