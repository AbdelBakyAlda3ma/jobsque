import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_step.dart';
import 'package:jobseque/core/widgets/custom_stepper_control_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'custom_step_progress.dart';
import 'custom_stepper_step_content.dart';

class CustomStepper extends StatefulWidget {
  final List<CustomStep> customSteps;
  final bool withContent;
  final int currentStep;
  final PageController pageController;
  final void Function(int) onStepTapped;
  final VoidCallback onStepContinue;

  const CustomStepper({
    super.key,
    required this.customSteps,
    required this.onStepTapped,
    this.currentStep = 0,
    required this.onStepContinue,
    required this.pageController,
    this.withContent = true,
  }) : assert(0 <= currentStep && currentStep < customSteps.length);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  bool _isLastStep() {
    return widget.currentStep == widget.customSteps.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const VerticalSpace(space: 18),
        CustomStepProgress(
          onStepTapped: (step) {
            widget.onStepTapped(step);
            if (widget.pageController.hasClients) {
              widget.pageController.jumpToPage(step);
            }
          },
          currentIndex: widget.currentStep,
          stepsList: widget.customSteps,
        ),
        const VerticalSpace(space: 32),
        widget.withContent
            ? CustomStepperStepContent(
                pageController: widget.pageController,
                customSteps: widget.customSteps,
                currentStep: widget.currentStep,
              )
            : const SizedBox(),
        const VerticalSpace(space: 9),
        CustomStepperControlButton(
          pageController: widget.pageController,
          onStepContinue: widget.onStepContinue,
          isLastStep: _isLastStep(),
        ),
        const VerticalSpace(space: 9),
      ],
    );
  }
}
