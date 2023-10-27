import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/widgets/custom_step.dart';
import 'package:jobseque/core/widgets/custom_step_progress_icon.dart';
import 'package:jobseque/core/widgets/job_card_title_and_image_and_saved_icon.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_category_and_posted_time.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_custom_steps_label.dart';
import 'package:jobseque/test_screen.dart';

class ActiveJobCard extends StatefulWidget {
  const ActiveJobCard({
    super.key,
    required this.activeAppliedJob,
  });

  final ActiveAppliedJobEntity activeAppliedJob;

  @override
  State<ActiveJobCard> createState() => _ActiveJobCardState();
}

class _ActiveJobCardState extends State<ActiveJobCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          InProgressAppliedJobRoute(
            activeAppliedJob: widget.activeAppliedJob,
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          JobCardTitleAndImageAndSavedIcon(
            job: widget.activeAppliedJob.job!,
          ),
          const VerticalSpace(space: 16),
          AppliedJobCardCategory(
            job: widget.activeAppliedJob.job!,
          ),
          const VerticalSpace(space: 12),
          AppliedStepProgrees(
            steps: _getList(widget.activeAppliedJob.applicationStepProgress!),
            currentStep: widget.activeAppliedJob.applicationStepProgress!,
          ),
          const VerticalSpace(space: 12),
          Divider(
            thickness: 1,
            color: AppColors.neutral[200],
            height: 0,
          ),
        ],
      ),
    );
  }

  List<CustomStep> _getList(int currentStep) => [
        CustomStep(
          state: currentStep >= 0
              ? CustomStepState.hangOnInProgress
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep >= 0,
            labelText: 'biodata',
          ),
        ),
        CustomStep(
          state: currentStep >= 1
              ? CustomStepState.hangOnInProgress
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep >= 1,
            labelText: 'Type of work',
          ),
        ),
        CustomStep(
          state: currentStep == 2
              ? CustomStepState.hangOnInProgress
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep == 2,
            labelText: 'Upload portfolio',
          ),
        ),
      ];
}
