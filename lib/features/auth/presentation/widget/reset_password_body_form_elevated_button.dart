import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/disabled_button.dart';
import '../../../../core/widgets/primary_button.dart';

class ResetPasswordBodyFormElevatedButton extends StatefulWidget {
  const ResetPasswordBodyFormElevatedButton({
    super.key,
  });

  @override
  State<ResetPasswordBodyFormElevatedButton> createState() =>
      _ResetPasswordBodyFormElevatedButtonState();
}

class _ResetPasswordBodyFormElevatedButtonState
    extends State<ResetPasswordBodyFormElevatedButton> {
  bool isDisabled = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isDisabled
          ? DisabledButton.large(
              text: 'Request password reset',
            )
          : PrimaryButton.large(
              text: 'Request password reset',
              onPressed: () {},
            ),
    );
  }
}
