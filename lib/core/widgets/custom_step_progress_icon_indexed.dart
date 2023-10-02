import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class CustomStepProgressIconIndexed extends StatelessWidget {
  final double? size;
  const CustomStepProgressIconIndexed({
    super.key,
    required this.isActiveIcon,
    required this.iconIndex,
    this.size,
  });

  final bool isActiveIcon;
  final int iconIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(

            /// change the border color if is active
            color: isActiveIcon
                ? AppColors.primary[500]!
                : AppColors.neutral[400]!),
        color: Colors.white,
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
                  color: isActiveIcon
                      ? AppColors.primary[500]
                      : AppColors.neutral[400],
                )
              : CustomTextStyles.textSRegular.copyWith(
                  color: isActiveIcon
                      ? AppColors.primary[500]
                      : AppColors.neutral[400],
                ),
        ),
      ),
    );
  }
}
