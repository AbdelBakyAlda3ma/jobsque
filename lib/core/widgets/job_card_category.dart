import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/job_card_category_item.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class JobCardCategory extends StatelessWidget {
  final JobEntity job;
  const JobCardCategory({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 226,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          JobCardCategoryItem(
            category: job.jobLevel ?? '',
          ),
          JobCardCategoryItem(
            category: job.jobTimeType ?? '',
          ),
          JobCardCategoryItem(
            category: job.jobType ?? '',
          ),
        ],
      ),
    );
  }
}
