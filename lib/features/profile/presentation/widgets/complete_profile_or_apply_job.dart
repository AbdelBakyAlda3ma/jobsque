import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_error_widget.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/check_if_profile_complete_cubit/check_if_profile_complete_cubit.dart';

@RoutePage()
class CompleteProfileOrApplyJobWidget extends StatefulWidget {
  final JobEntity job;

  const CompleteProfileOrApplyJobWidget({super.key, required this.job});

  @override
  State<CompleteProfileOrApplyJobWidget> createState() =>
      _CompleteProfileOrApplyJobWidgetState();
}

class _CompleteProfileOrApplyJobWidgetState
    extends State<CompleteProfileOrApplyJobWidget> {
  @override
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckIfProfileCompleteCubit,
        CheckIfProfileCompleteState>(listener: (context, state) {
      if (state is ProfileIsAlreadyCompleted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.replaceRoute(
            JobsWrapper(
              children: [
                ApplyJobStepperRoute(
                  job: widget.job,
                ),
              ],
            ),
          );
        });
      }
      if (state is ProfileIsNotCompleted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.router.push(
            CompleteProfileRoute(
              job: widget.job,
            ),
          );
        });
      }
    }, builder: (context, state) {
      if (state is CheckIfProfileCompleteFailure) {
        return AppErrorWidget(
          errorMessage: state.errMsg,
        );
      } else {
        return const LoadingWidget();
      }
    });
  }
}
