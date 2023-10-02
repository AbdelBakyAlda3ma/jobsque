import 'package:flutter/material.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class UploadPortfolioListTileTitle extends StatelessWidget {
  const UploadPortfolioListTileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rafif Dian.CV',
      style: CustomTextStyles.textMMedium.copyWith(
        color: AppColors.neutral[900],
      ),
    );
  }
}
