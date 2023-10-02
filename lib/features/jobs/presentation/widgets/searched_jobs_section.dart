import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/searched_job_section_list_view_of_jobs.dart';
import 'package:jobseque/features/jobs/presentation/widgets/searched_jobs_section_header.dart';

import '../../domain/entities/job_entity.dart';

class SearchedJobsSection extends StatelessWidget {
  final List<JobEntity> jobsList;
  const SearchedJobsSection({
    super.key,
    required this.jobsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchedJobsSectionHeader(
            jobsList: jobsList,
          ),
          const VerticalSpace(space: 25),
          SearchedJobSectionListViewOfJobs(jobsList: jobsList)
        ],
      ),
    );
  }
}
