import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class CustomBottomSheetItem extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Function()? onTap;
  const CustomBottomSheetItem({
    super.key,
    this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 14, 16, 14),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: AppColors.neutral[300]!,
        ),
      ),
      child: Row(
        children: [
          icon != null
              ? Row(
                  children: [
                    Icon(
                      icon,
                      size: 20,
                      color: AppColors.neutral[900],
                    ),
                    const HorizontalSpace(space: 14),
                  ],
                )
              : const SizedBox(),
          Text(
            text,
            style: CustomTextStyles.textLMedium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              IconsJobeque.arrowrighoutlinet,
              size: 20,
              color: AppColors.neutral[900],
            ),
          ),
        ],
      ),
    );
  }
}
