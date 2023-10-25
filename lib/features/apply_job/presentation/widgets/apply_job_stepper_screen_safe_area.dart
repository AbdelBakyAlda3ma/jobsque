import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_scaffold.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class ApplyJobStepperScreenSafeArea extends StatelessWidget {
  final JobEntity job;

  const ApplyJobStepperScreenSafeArea({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplyJobBloc, ApplyJobState>(
      listener: (context, state) {
        if (state is ApplyJobSuccess) {
          context.router.pushAndPopUntil(
            const DataSentSuccessfulyRoute(),
            predicate: (route) => false,
          );
        }
        if (state is ApplyJobFailure) {
          showErrorSnackBar(
            context: context,
            message: state.errorMsg,
          );
        }
      },
      child: SafeArea(
        child: ApplyJobStepperScreenScaffold(
          job: job,
        ),
      ),
    );
  }
}
