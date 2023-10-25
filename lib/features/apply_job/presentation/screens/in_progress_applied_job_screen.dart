import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/in_progress_applied_job_screen_safe_area.dart';

@RoutePage()
class InProgressAppliedJobScreen extends StatelessWidget {
  final ActiveAppliedJobEntity activeAppliedJob;

  const InProgressAppliedJobScreen({
    super.key,
    required this.activeAppliedJob,
  });

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
      ],
      child: InProgressAppliedScreenSafeArea(
        activeAppliedJob: activeAppliedJob,
      ),
    );
  }
}
