import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class ContentCompanyContactUsComponent extends StatelessWidget {
  final String contactVia;
  final String value;

  const ContentCompanyContactUsComponent({
    super.key,
    required this.contactVia,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.neutral[200]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contactVia,
              style: CustomTextStyles.textSRegular.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 2),
            Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.textMMedium.copyWith(
                color: AppColors.neutral[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
