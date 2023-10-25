import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class CustomStepProgressIconCompleteWithIndex extends StatelessWidget {
  final double? size;
  final int iconIndex;
  const CustomStepProgressIconCompleteWithIndex({
    super.key,
    this.size,
    required this.iconIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.primary[500],
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        width: size ?? 44,
        height: size ?? 44,
        child: Text(
          '$iconIndex',
          textAlign: TextAlign.center,
          style: (size != null && size! > 35)
              ? CustomTextStyles.textLMedium.copyWith(
                  color: Colors.white,
                )
              : CustomTextStyles.textSRegular.copyWith(
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}
