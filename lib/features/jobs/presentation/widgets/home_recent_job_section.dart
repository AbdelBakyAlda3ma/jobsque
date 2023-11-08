import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_error_widget.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_section_heading.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_section_list_view.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/Job_bloc/job_bloc.dart';
import 'home_shimmer_loding.dart';

class HomeRecentJobSection extends StatelessWidget {
  const HomeRecentJobSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeRecentJobSectionHeading(),
        BlocBuilder<JobBloc, JobState>(
          builder: (context, state) {
            if (state is GetAllJobsFailure) {
              return HomeErrorWidget(
                errorMessage: state.errorMessage,
              );
            }
            if (state is GetAllJobsSuccess) {
              return HomeRecentJobSectionListView(
                allJobList: state.allJobsList,
              );
            } else {
              return const HomeShimmerLoding();
            }
          },
        ),
      ],
    );
  }
}
