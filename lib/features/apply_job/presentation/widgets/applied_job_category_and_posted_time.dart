import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/job_card_category_item.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class AppliedJobCardCategory extends StatelessWidget {
  final JobEntity job;
  const AppliedJobCardCategory({
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
          Row(
            children: [
              JobCardCategoryItem(
                category: job.jobTimeType ?? '',
              ),
              const HorizontalSpace(space: 12),
              JobCardCategoryItem(
                category: job.jobType ?? '',
              ),
            ],
          ),
          Text(
            'Posted 2 days ago',
            style: CustomTextStyles.textSRegular.copyWith(
              color: AppColors.neutral[700],
            ),
          ),
        ],
      ),
    );
  }
}
