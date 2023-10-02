import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';

class CustomStepperControlButton extends StatelessWidget {
  final VoidCallback onStepContinue;
  final bool isLastStep;

  const CustomStepperControlButton({
    super.key,
    required this.onStepContinue,
    required this.isLastStep,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
        onPressed: onStepContinue,
        text: isLastStep ? 'Submit' : 'Continue',
      ),
    );
  }
}
