import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class SetFilterBottomSheetJobTypeWrapItem extends StatefulWidget {
  final String jobType;
  const SetFilterBottomSheetJobTypeWrapItem({super.key, required this.jobType});

  @override
  State<SetFilterBottomSheetJobTypeWrapItem> createState() =>
      _SetFilterBottomSheetJobTypeWrapItemState();
}

class _SetFilterBottomSheetJobTypeWrapItemState
    extends State<SetFilterBottomSheetJobTypeWrapItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          /// change the background color if selected
          color: isSelected ? AppColors.primary[100] : Colors.transparent,
          borderRadius: BorderRadius.circular(100),

          /// changing the border if selected
          border: isSelected
              ? Border.all(color: AppColors.primary[500]!)
              : Border.all(
                  color: AppColors.neutral[400]!,
                ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Text(
          widget.jobType,
          style: CustomTextStyles.textSMedium.copyWith(
            /// changing the text color if selected
            color: isSelected ? AppColors.primary[500] : AppColors.neutral[500],
          ),
        ),
      ),
    );
  }
}
