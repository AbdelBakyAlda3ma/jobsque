import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';

class ContentDescriptionJobDescription extends StatelessWidget {
  final JobEntity job;

  const ContentDescriptionJobDescription({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Job Description',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          job.jobDescription ?? '',
          style: CustomTextStyles.textSRegular.copyWith(
            color: AppColors.neutral[600],
            letterSpacing: 0.01,
          ),
        ),
      ],
    );
  }
}
