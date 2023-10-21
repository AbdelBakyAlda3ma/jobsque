import 'package:flutter/material.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_scaffold.dart';

class ApplyJobStepperScreenSafeArea extends StatelessWidget {
  const ApplyJobStepperScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ApplyJobStepperScreenScaffold(),
    );
  }
}
