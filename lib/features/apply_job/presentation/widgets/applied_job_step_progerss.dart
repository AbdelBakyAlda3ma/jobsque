import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/widgets/custom_step.dart';
import 'package:jobseque/core/widgets/custom_step_progress.dart';

class AppliedStepProgrees extends StatelessWidget {
  final List<CustomStep> steps;
  final int currentStep;
  const AppliedStepProgrees({
    super.key,
    required this.steps,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.neutral[300]!,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: CustomStepProgress(
        currentIndex: currentStep,
        stepsList: steps,
        iconSize: 24,
      ),
    );
  }
}
