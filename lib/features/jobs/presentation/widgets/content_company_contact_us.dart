import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';
import 'content_company_contact_us_component.dart';

class ContentCompanyContactUs extends StatelessWidget {
  final JobEntity job;
  const ContentCompanyContactUs({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 12),
        Row(
          children: [
            ContentCompanyContactUsComponent(
              contactVia: 'Email',
              value: job.compEmail ?? '',
            ),
            const HorizontalSpace(space: 13),
            ContentCompanyContactUsComponent(
              contactVia: 'Website',
              value: job.compWebsite ?? '',
            ),
          ],
        ),
      ],
    );
  }
}
