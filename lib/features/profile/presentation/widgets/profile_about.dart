import 'package:flutter/material.dart';
import 'package:jobseque/core/strings/dummy_string_data.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'About',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[500],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Edit',
                style: CustomTextStyles.textMMedium.copyWith(
                  color: AppColors.primary[500],
                ),
              ),
            )
          ],
        ),
        const VerticalSpace(space: 12),
        Text(
          kProfileAboutContent,
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[500],
            letterSpacing: 0.01,
          ),
        ),
      ],
    );
  }
}
