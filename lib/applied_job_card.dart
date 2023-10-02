import 'package:flutter/material.dart';

import 'core/utils/global/app_colors.dart';

class AppliedJobCard extends StatelessWidget {
  const AppliedJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103,
      child: Column(
        children: [
          // const JobCardTitle(),
          // const VerticalSpace(space: 16),
          // const JobCardCategoryAndSalary(),
          // const VerticalSpace(space: 16),
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
