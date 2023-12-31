import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/screens/job_detail_screen.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_job_card_categories_and_salary.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_job_card_title_and_image.dart';
import '../../domain/entities/job_entity.dart';

class SearchJobCard extends StatelessWidget {
  final JobEntity job;
  const SearchJobCard({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetailScreen(job: job),
          ),
        );
      },
      child: IntrinsicHeight(
        child: Column(
          children: [
            SearchJobCardTitleAndImage(
              job: job,
            ),
            const VerticalSpace(space: 16),
            SearchJobCardCategoriesAndSalary(
              job: job,
            ),
            const VerticalSpace(space: 16),
            Divider(
              thickness: 1,
              color: AppColors.neutral[200],
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
