import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';

import 'core/widgets/custom_step.dart';
import 'core/widgets/custom_step_progress.dart';
import 'core/widgets/custom_step_progress_icon.dart';
import 'features/apply_job/presentation/widgets/apply_job_stepper_custom_steps_label.dart';
import 'features/apply_job/presentation/widgets/biodata_step_content.dart';
import 'features/apply_job/presentation/widgets/type_of_work_step_content.dart';
import 'features/apply_job/presentation/widgets/upload_portfolio_step_content.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int currentStep = 2;

  List<CustomStep> _getList() => [
        CustomStep(
          content: const BiodataStepContent(),
          state: currentStep > 0
              ? CustomStepState.complete
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep >= 0,
            labelText: 'biodata',
          ),
        ),
        CustomStep(
          content: const TypeOfWorkStepContent(),
          state: currentStep > 1
              ? CustomStepState.complete
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep >= 1,
            labelText: 'Type of work',
          ),
        ),
        CustomStep(
          content: const UploadPortfolioStepContent(),
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep == 2,
            labelText: 'Upload portfolio',
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('Hi'),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) => AppliedStepProgrees(
                    steps: _getList(), currentStep: currentStep)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
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
      ),
    );
  }
}
