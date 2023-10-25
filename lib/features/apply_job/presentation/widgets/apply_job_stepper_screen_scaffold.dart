import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_app_bar.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class ApplyJobStepperScreenScaffold extends StatelessWidget {
  final JobEntity job;

  const ApplyJobStepperScreenScaffold({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.mounted) {
          BlocProvider.of<AddActiveApplicationBloc>(context).add(
            AddActiveApplicationEvent(
              job: job,
            ),
          );
        }
        return true;
      },
      child: Scaffold(
        appBar: ApplyJobStepperScreenAppBar(
          job: job,
        ),
        body: const ApplyJobStepper(),
      ),
    );
  }
}
