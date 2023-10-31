import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';
import '../../../../core/widgets/job_card_category_and_salary.dart';
import '../../../../core/widgets/job_card_title_and_image_and_saved_icon.dart';

class JobCard extends StatelessWidget {
  final JobEntity job;
  const JobCard({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.navigate(JobDetailRoute(job: job));
      },
      child: Column(
        children: [
          JobCardTitleAndImageAndSavedIcon(
            job: job,
          ),
          const VerticalSpace(space: 16),
          JobCardCategoryAndSalary(
            job: job,
          ),
          const VerticalSpace(space: 16),
          Divider(
            thickness: 1,
            color: AppColors.neutral[200],
            height: 0,
          )
        ],
      ),
    );
  }
}
