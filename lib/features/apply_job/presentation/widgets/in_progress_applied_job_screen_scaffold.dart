import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_app_bar.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/in_progress_applied_job_screen_body.dart';

class InProgressAppliedJobScreenScaffold extends StatelessWidget {
  final ActiveAppliedJobEntity activeAppliedJob;

  const InProgressAppliedJobScreenScaffold({
    super.key,
    required this.activeAppliedJob,
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
          job: activeAppliedJob.job!,
        ),
        body: InProgressAppliedJobScreenBody(
          activeAppliedJob: activeAppliedJob,
        ),
      ),
    );
  }
}
