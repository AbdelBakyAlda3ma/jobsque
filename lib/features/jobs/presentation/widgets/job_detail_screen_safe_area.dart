import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_detail_screen_scaffold.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';

class JobDetailScreenSafeArea extends StatelessWidget {
  const JobDetailScreenSafeArea({
    super.key,
    required this.job,
  });

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<CompleteProfileCubit, CompleteProfileState>(
        listener: (context, state) {
          if (state is ProfileIsAlreadyCompleted) {
            context.router.push(
              ApplyJobStepperRoute(
                job: job,
              ),
            );
          }
          if (state is ProfileIsNotCompleted) {
            context.router.push(
              CompleteProfileRoute(
                job: job,
              ),
            );
          }
        },
        child: JobDetailScreenScaffold(job: job),
      ),
    );
  }
}
