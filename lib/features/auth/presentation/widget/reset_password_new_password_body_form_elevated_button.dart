import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/disabled_button.dart';
import '../../../../core/widgets/primary_button.dart';

class ResetPasswordNewPasswordBodyFormElevatedButton extends StatefulWidget {
  const ResetPasswordNewPasswordBodyFormElevatedButton({
    super.key,
  });

  @override
  State<ResetPasswordNewPasswordBodyFormElevatedButton> createState() =>
      _ResetPasswordNewPasswordBodyFormElevatedButtonState();
}

class _ResetPasswordNewPasswordBodyFormElevatedButtonState
    extends State<ResetPasswordNewPasswordBodyFormElevatedButton> {
  bool isDisabled = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isDisabled
          ? DisabledButton.large(
              text: 'Reset password',
            )
          : PrimaryButton.large(
              text: 'Reset password',
              onPressed: () {},
            ),
    );
  }
}
