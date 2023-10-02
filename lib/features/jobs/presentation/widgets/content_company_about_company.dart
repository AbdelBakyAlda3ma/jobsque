import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';

class ContentCompanyAboutCompany extends StatelessWidget {
  final JobEntity job;

  const ContentCompanyAboutCompany({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Company',
            style: CustomTextStyles.textMMedium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 16),
          Expanded(
            child: ListView(
              children: [
                Text(
                  job.aboutCompany ?? '',
                  style: CustomTextStyles.textSRegular.copyWith(
                    color: AppColors.neutral[600],
                    letterSpacing: 0.01,
                  ),
                ),
                const VerticalSpace(space: 70),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
