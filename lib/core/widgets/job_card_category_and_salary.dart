import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import 'job_card_category.dart';
import 'job_card_price.dart';

class JobCardCategoryAndSalary extends StatelessWidget {
  final JobEntity job;
  const JobCardCategoryAndSalary({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Row(
        children: [
          JobCardCategory(
            job: job,
          ),
          const Spacer(),
          JobCardSalary(
            salary: job.salary ?? '',
          ),
        ],
      ),
    );
  }
}
