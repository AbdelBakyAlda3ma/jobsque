import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_heading.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view.dart';

class HomeSuggestedJobSection extends StatelessWidget {
  final List<JobEntity> jobsList;

  const HomeSuggestedJobSection({
    super.key,
    required this.jobsList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeSuggestedJobSectionHeading(),
        HomeSuggestedJobSectionListView(
          suggestedJobs: jobsList,
        ),
      ],
    );
  }
}
