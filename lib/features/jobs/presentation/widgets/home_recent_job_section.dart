import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_section_heading.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_section_list_view.dart';

class HomeRecentJobSection extends StatelessWidget {
  final List<JobEntity> jobsList;

  const HomeRecentJobSection({super.key, required this.jobsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeRecentJobSectionHeading(),
        HomeRecentJobSectionListView(
          allJobList: jobsList,
        ),
      ],
    );
  }
}
