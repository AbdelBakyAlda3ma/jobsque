import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_job_card.dart';

import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';

class SearchedJobSectionListViewOfJobs extends StatelessWidget {
  const SearchedJobSectionListViewOfJobs({
    super.key,
    required this.jobsList,
  });

  final List<JobEntity> jobsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          itemBuilder: (context, index) => SearchJobCard(
            job: jobsList[index],
          ),
          separatorBuilder: (context, index) => const VerticalSpace(space: 20),
          itemCount: jobsList.length,
        ),
      ),
    );
  }
}
