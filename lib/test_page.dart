import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_body.dart';

class CompleteProfileScreenScaffold extends StatelessWidget {
  const CompleteProfileScreenScaffold({
    super.key,
    required this.job,
  });

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: BlocConsumer<CompleteProfileCubit, CompleteProfileState>(
        listener: ((context, state) {
          if (state is CompletedProfile) {
            context.replaceRoute(
              JobsWrapper(
                children: [
                  ApplyJobStepperRoute(
                    job: job,
                  ),
                ],
              ),
            );
          } else {
            context.popRoute();
          }
        }),
        builder: (context, state) {
          return Scaffold(
            appBar: CompleteProfileScreenAppBar(
              job: job,
            ),
            body: const CompleteProfileScreenBody(),
          );
        },
      ),
    );
  }
}
