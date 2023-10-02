import 'package:flutter/material.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';

class TwoStepVerificationInitialBodyExplainText extends StatelessWidget {
  final String text;
  final IconData? icon;

  const TwoStepVerificationInitialBodyExplainText({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon != null
            ? CircleAvatar(
                backgroundColor: AppColors.primary[100],
                radius: 22,
                child: Icon(
                  icon,
                  size: 24,
                  color: AppColors.primary[500],
                ),
              )
            : const SizedBox(),
        const HorizontalSpace(space: 12),
        Expanded(
          child: Text(
            text,
            // overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: CustomTextStyles.textMRegular.copyWith(
              color: AppColors.neutral[500],
              letterSpacing: 0.01,
            ),
          ),
        ),
      ],
    );
  }
}
