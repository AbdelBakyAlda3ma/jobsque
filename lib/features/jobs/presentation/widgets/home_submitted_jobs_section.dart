import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/show_submitted_jobs_bloc/show_submitted_jobs_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_submitted_jobs_section_list_view.dart';

class HomeSubmittedJobsSection extends StatelessWidget {
  const HomeSubmittedJobsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowSubmittedJobsBloc, ShowSubmittedJobsState>(
      builder: (context, state) {
        if (state is ShowSubmittedJobsSuccess) {
          return HomeSubmittedJobsSectionListView(
            submittedJobs: state.submittedJobs,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
