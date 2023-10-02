import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_job_card_categories.dart';

import '../../../../core/widgets/job_card_price.dart';

class SearchJobCardCategoriesAndSalary extends StatelessWidget {
  final JobEntity job;
  const SearchJobCardCategoriesAndSalary({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchJobCardCategories(
            job: job,
          ),
          JobCardSalary(
            salary: job.salary ?? '',
          ),
        ],
      ),
    );
  }
}
