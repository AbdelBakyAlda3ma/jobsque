import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class HomeRecentJobSectionHeading extends StatelessWidget {
  const HomeRecentJobSectionHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 9,
        left: 24,
        top: 16,
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent Job',
            style: CustomTextStyles.h5Medium
                .copyWith(color: AppColors.neutral[900]),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'View all',
              style: CustomTextStyles.textMMedium
                  .copyWith(color: AppColors.primary[500]),
            ),
          ),
        ],
      ),
    );
  }
}
