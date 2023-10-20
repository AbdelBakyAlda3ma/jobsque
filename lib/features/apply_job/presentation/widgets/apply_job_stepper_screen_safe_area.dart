import 'package:flutter/material.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_app_bar.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_body.dart';

class ApplyJobStepperScreenSafeArea extends StatelessWidget {
  const ApplyJobStepperScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: ApplyJobStepperScreenAppBar(),
        body: ApplyJobStepperScreenBody(),
      ),
    );
  }
}
