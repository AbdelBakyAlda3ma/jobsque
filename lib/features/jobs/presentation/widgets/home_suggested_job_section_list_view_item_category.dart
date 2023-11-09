import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import 'home_suggested_job_category_item.dart';

class HomeSuggestedJobSectionListViewItemCategory extends StatelessWidget {
  final JobEntity job;
  const HomeSuggestedJobSectionListViewItemCategory({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeSuggestdJobCategoryItem(
            category: job.jobLevel!,
          ),
          HomeSuggestdJobCategoryItem(
            category: job.jobTimeType!,
          ),
          HomeSuggestdJobCategoryItem(
            category: job.jobType!,
          ),
        ],
      ),
    );
  }
}
