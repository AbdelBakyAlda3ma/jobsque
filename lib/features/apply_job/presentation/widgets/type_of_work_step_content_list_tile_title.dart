import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class TypeOfWorkStepContentListTileTitle extends StatelessWidget {
  const TypeOfWorkStepContentListTileTitle({
    super.key,
    required this.job,
  });
  final String job;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Senior $job',
      style: CustomTextStyles.textLMedium.copyWith(
        color: AppColors.neutral[900],
      ),
    );
  }
}
