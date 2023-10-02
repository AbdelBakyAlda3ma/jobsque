import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';

class OnboardingPrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const OnboardingPrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      child: PrimaryButton.large(
        onPressed: onPressed,
        text: text,
      ),
    );
  }
}
