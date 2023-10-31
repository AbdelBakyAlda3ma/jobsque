import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';

class CustomStepperControlButton extends StatelessWidget {
  final bool isLastStep;
  final PageController pageController;
  final VoidCallback onStepContinue;
  const CustomStepperControlButton({
    super.key,
    required this.isLastStep,
    required this.pageController,
    required this.onStepContinue,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplyJobBloc, ApplyJobState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: PrimaryButton.large(
            onPressed: onStepContinue,
            text: isLastStep ? 'Submit' : 'Continue',
            child: state is ApplyJobLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : null,
          ),
        );
      },
    );
  }
}
