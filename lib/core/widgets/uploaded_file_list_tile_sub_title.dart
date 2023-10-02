import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class UploadPortfolioListTileSubTitle extends StatelessWidget {
  const UploadPortfolioListTileSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'CV.pdf 300KB',
      style: CustomTextStyles.textSRegular.copyWith(
        color: AppColors.neutral[500],
      ),
    );
  }
}
