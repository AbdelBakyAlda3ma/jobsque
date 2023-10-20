import 'package:flutter/material.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class UploadPortfolioListTileTitle extends StatelessWidget {
  final String name;
  const UploadPortfolioListTileTitle({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: CustomTextStyles.textMMedium.copyWith(
        color: AppColors.neutral[900],
      ),
    );
  }
}
