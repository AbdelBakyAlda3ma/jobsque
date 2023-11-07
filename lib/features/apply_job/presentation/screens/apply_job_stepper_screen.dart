import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/delete_successed_applied_job_bloc/delete_successed_applied_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_screen_safe_area.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/manager/add_submitted_job_bloc/add_submitted_job_bloc.dart';

@RoutePage()
class ApplyJobStepperScreen extends StatelessWidget {
  final JobEntity job;
  const ApplyJobStepperScreen({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CompeleteJobApplicationCubit>(
          lazy: false,
          create: (context) => CompeleteJobApplicationCubit(),
        ),
        BlocProvider<AddActiveApplicationBloc>(
            lazy: false,
            create: (context) => sL.get<AddActiveApplicationBloc>()),
        BlocProvider<ApplyJobBloc>(
          create: (context) => sL.get<ApplyJobBloc>(),
        ),
        BlocProvider<AddSubmittedJobBloc>(
          create: (context) => sL.get<AddSubmittedJobBloc>(),
        ),
        BlocProvider<DeleteSuccessedAppliedJobBloc>(
          create: (context) => sL.get<DeleteSuccessedAppliedJobBloc>(),
        ),
      ],
      child: ApplyJobStepperScreenSafeArea(
        job: job,
      ),
    );
  }
}
