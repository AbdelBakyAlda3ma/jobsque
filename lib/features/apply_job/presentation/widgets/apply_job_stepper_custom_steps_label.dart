import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';

class ApplyJobStepperCustomStepsLabel extends StatelessWidget {
  const ApplyJobStepperCustomStepsLabel({
    super.key,
    required this.isActive,
    required this.labelText,
  });
  final bool isActive;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      textAlign: TextAlign.center,
      style: CustomTextStyles.textSRegular.copyWith(
        color: isActive ? AppColors.primary[500] : AppColors.neutral[900],
      ),
    );
  }
}
