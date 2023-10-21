import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';

class CustomStepperControlButton extends StatefulWidget {
  final bool isLastStep;
  final PageController pageController;

  const CustomStepperControlButton({
    super.key,
    required this.isLastStep,
    required this.pageController,
  });

  @override
  State<CustomStepperControlButton> createState() =>
      _CustomStepperControlButtonState();
}

class _CustomStepperControlButtonState
    extends State<CustomStepperControlButton> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CompeleteJobApplicationCubit,
        CompeleteJobApplicationState>(
      listener: mappingBlocListener,
      child: SizedBox(
        width: double.infinity,
        child: PrimaryButton.large(
          onPressed: handlingStepperInformation,
          text: widget.isLastStep ? 'Submit' : 'Continue',
        ),
      ),
    );
  }

  int get currentStep {
    return BlocProvider.of<AddActiveApplicationBloc>(context).currentStep;
  }

  set currentStep(int currentStep) {
    BlocProvider.of<AddActiveApplicationBloc>(context).currentStep =
        currentStep;
  }

  void handlingStepperInformation() {
    switch (currentStep) {
      case 0:
        return BlocProvider.of<CompeleteJobApplicationCubit>(context)
            .bioInformationStep();
      case 1:
        return BlocProvider.of<CompeleteJobApplicationCubit>(context)
            .typeOfWorkStep();
      default:
        BlocProvider.of<CompeleteJobApplicationCubit>(context).otherFileStep();
    }
  }

  void mappingBlocListener(context, state) {
    if (state is EmptyBioFieldState) {
      showErrorSnackBar(
        context: context,
        message: 'Please fill required fields',
      );
    }
    if (state is EmptyWorkTypeState) {
      showErrorSnackBar(
        context: context,
        message: 'Please Choose work type portfolio first',
      );
    }
    if (state is EmptyOtherFileState) {
      showErrorSnackBar(
        context: context,
        message: 'Please upload other file first',
      );
    }
    if (state is CompleteBioFildsState) {
      _onStepContinue();
    }
    if (state is CompleteWorkTypeState) {
      _onStepContinue();
    }
    if (state is CompleteOtherFileState) {
      _onSubmit();
    }
  }

  _onSubmit() {
    BlocProvider.of<ApplyJobBloc>(context).add(
      ApplyJobEvent(
        applyJobEntity:
            BlocProvider.of<AddActiveApplicationBloc>(context).applyJobEntity,
      ),
    );
  }

  _onStepContinue() {
    currentStep++;
    if (widget.pageController.hasClients) {
      widget.pageController.nextPage(
          duration: const Duration(milliseconds: 60), curve: Curves.linear);
    }
  }
}
