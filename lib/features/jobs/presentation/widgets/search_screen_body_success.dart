import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/filter_search_section.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';
import 'searched_jobs_section.dart';

class SearchScreenBodySuccess extends StatelessWidget {
  final List<JobEntity> jobsList;
  const SearchScreenBodySuccess({
    super.key,
    required this.jobsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const FilterSearchSection(),
          const VerticalSpace(space: 20),
          SearchedJobsSection(
            jobsList: jobsList,
          ),
        ],
      ),
    );
  }
}
