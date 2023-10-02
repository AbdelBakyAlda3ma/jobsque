import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/job_card_category_item.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class SearchJobCardCategories extends StatelessWidget {
  final JobEntity job;
  const SearchJobCardCategories({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 226,
      child: Row(
        children: [
          JobCardCategoryItem(
            category: job.jobTimeType ?? '',
          ),
          const HorizontalSpace(space: 8),
          JobCardCategoryItem(
            category: job.jobType ?? '',
          ),
        ],
      ),
    );
  }
}
