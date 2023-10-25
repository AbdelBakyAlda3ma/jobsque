import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/show_active_applied_jobs_bloc/show_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_scaffold.dart';

class AppliedJobScreenSafeArea extends StatelessWidget {
  final String routeName;
  const AppliedJobScreenSafeArea({
    super.key,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ShowActiveAppliedJobsBloc, ShowActiveAppliedJobsState>(
        builder: (context, state) {
          if (state is ShowActiveAppliedJobsSuccess) {
            return AppliedJobScreenScaffold(
              listOfActiveJjobs: state.listOfActiveAppliedJobs,
              routeName: routeName,
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
