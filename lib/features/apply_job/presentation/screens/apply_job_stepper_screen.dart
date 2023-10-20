import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/show_active_applied_jobs_bloc/show_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_safe_area.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

@RoutePage()
class ApplyJobStepperScreen extends StatelessWidget {
  final JobEntity job;
  const ApplyJobStepperScreen({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddActiveApplicationBloc>(
          lazy: false,
          create: (context) => sL.get<AddActiveApplicationBloc>()
            ..add(
              AddActiveApplicationEvent(
                job: job,
              ),
            ),
        ),
        BlocProvider<ShowActiveAppliedJobsBloc>(
          create: (context) => sL.get<ShowActiveAppliedJobsBloc>(),
        ),
        BlocProvider<ApplyJobBloc>(
          create: (context) => sL.get<ApplyJobBloc>(),
        ),
      ],
      child: const ApplyJobStepperScreenSafeArea(),
    );
  }
}
