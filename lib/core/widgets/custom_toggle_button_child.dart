import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class CustomToggleButtonChild extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomToggleButtonChild({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        /// change the backgroud color if is selected
        color: isSelected ? AppColors.primary[900] : Colors.transparent,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: Text(
        text,
        style: CustomTextStyles.textMMedium.copyWith(
          /// change the text color if is selected
          color: isSelected ? Colors.white : AppColors.neutral[500],
        ),
      ),
    );
  }
}
