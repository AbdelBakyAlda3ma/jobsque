import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_no_added_jobs.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/get_active_jobs_succes_widget.dart';

class AppliedJobScreenBodyActiveJobsContent extends StatelessWidget {
  const AppliedJobScreenBodyActiveJobsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetActiveAppliedJobsBloc, GetActiveAppliedJobsState>(
      builder: (context, state) {
        if (state is GetActiveAppliedJobsSuccess) {
          return GetActiveJobsSuccesWidget(
            listOfActiveAppliedJobs: state.listOfactiveJobs,
          );
        }
        if (state is NoActiveAppliedJobs) {
          return const AppliedJobNoAddedJobs();
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
