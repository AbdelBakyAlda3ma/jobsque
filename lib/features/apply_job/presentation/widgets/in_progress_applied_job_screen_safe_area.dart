import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/in_progress_applied_job_screen_scaffold.dart';

class InProgressAppliedScreenSafeArea extends StatelessWidget {
  final ActiveAppliedJobEntity activeAppliedJob;

  const InProgressAppliedScreenSafeArea({
    super.key,
    required this.activeAppliedJob,
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
        child: InProgressAppliedJobScreenScaffold(
          activeAppliedJob: activeAppliedJob,
        ),
      ),
    );
  }
}
