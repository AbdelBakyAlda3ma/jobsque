import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class JobCardSalary extends StatelessWidget {
  final String salary;
  const JobCardSalary({
    super.key,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "\$${double.parse(salary) ~/ 1000}K",
        style: CustomTextStyles.textLMedium
            .copyWith(color: AppColors.success[700]),
        children: <TextSpan>[
          TextSpan(
            text: '/Month',
            style: CustomTextStyles.textSMedium
                .copyWith(color: AppColors.neutral[500]),
          ),
        ],
      ),
    );
  }
}
