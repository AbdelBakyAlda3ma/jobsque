import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_step.dart';
import 'package:jobseque/core/widgets/custom_stepper_control_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'custom_step_progress.dart';
import 'custom_stepper_step_content.dart';

class CustomStepper extends StatefulWidget {
  final List<CustomStep> customSteps;
  final int currentStep;
  final void Function(int) onStepTapped;
  final VoidCallback onStepContinue;

  const CustomStepper({
    super.key,
    required this.customSteps,
    required this.onStepTapped,
    this.currentStep = 0,
    required this.onStepContinue,
  }) : assert(0 <= currentStep && currentStep < customSteps.length);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
            if (_pageController.hasClients) {
              _pageController.jumpToPage(step);
            }
          },
          currentIndex: widget.currentStep,
          stepsList: widget.customSteps,
        ),
        const VerticalSpace(space: 32),
        CustomStepperStepContent(
          pageController: _pageController,
          customSteps: widget.customSteps,
          currentStep: widget.currentStep,
        ),
        const VerticalSpace(space: 9),
        CustomStepperControlButton(
          onStepContinue: () {
            widget.onStepContinue();
            if (_pageController.hasClients) {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 60),
                  curve: Curves.linear);
            }
          },
          isLastStep: _isLastStep(),
        ),
        const VerticalSpace(space: 9),
      ],
    );
  }
}
