import 'package:flutter/material.dart';
import '../../../core/utils/global/app_colors.dart';
import '../../../core/utils/global/custom_text_styles.dart';

class CustomHeader extends StatelessWidget {
  final String headerTitle;
  final AlignmentGeometry? alignment;
  const CustomHeader({
    super.key,
    required this.headerTitle,
    this.alignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.neutral[100],
        border: Border.all(color: AppColors.neutral[200]!),
      ),
      child: Text(
        headerTitle,
        style: CustomTextStyles.textMMedium
            .copyWith(color: AppColors.neutral[500]),
      ),
    );
  }
}
