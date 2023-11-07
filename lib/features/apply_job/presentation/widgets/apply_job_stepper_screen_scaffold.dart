import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
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
    return BlocListener<AddActiveApplicationBloc, AddActiveApplicationState>(
      listener: (context, state) {
        BlocProvider.of<GetActiveAppliedJobsBloc>(context).add(
          GetActiveAppliedJobsEvent(),
        );
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
