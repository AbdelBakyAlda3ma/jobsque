import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/custom_step_progress_icon.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/biodata_step_content.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_custom_steps_label.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/type_of_work_step_content.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content.dart';
import '../../../../core/widgets/custom_step.dart';
import '../../../../core/widgets/custom_stepper.dart';

class ApplyJobStepperScreenBody extends StatefulWidget {
  const ApplyJobStepperScreenBody({super.key});

  @override
  State<ApplyJobStepperScreenBody> createState() =>
      _ApplyJobStepperScreenBodyState();
}

class _ApplyJobStepperScreenBodyState extends State<ApplyJobStepperScreenBody> {
  int get currentStep {
    return BlocProvider.of<AddActiveApplicationBloc>(context).currentStep;
  }

  set currentStep(int currentStep) {
    BlocProvider.of<AddActiveApplicationBloc>(context).currentStep =
        currentStep;
  }

  List<CustomStep> get steps => [
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

  _onStepTapped(step) {
    setState(() {
      currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomStepper(
        currentStep: currentStep,
        customSteps: steps,
        onStepTapped: _onStepTapped,
      ),
    );
  }
}
