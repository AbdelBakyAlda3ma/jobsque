import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class CompleteProfileListViewItem extends StatefulWidget {
  const CompleteProfileListViewItem({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  State<CompleteProfileListViewItem> createState() =>
      _CompleteProfileListViewItemState();
}

class _CompleteProfileListViewItemState
    extends State<CompleteProfileListViewItem> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCompleted = !isCompleted;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        decoration: BoxDecoration(
          color: isCompleted ? AppColors.primary[100] : Colors.transparent,
          border: Border.all(
            color:
                isCompleted ? AppColors.primary[300]! : AppColors.neutral[300]!,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(
                    IconsJobeque.tickCircle,
                    size: 28,
                    color: isCompleted
                        ? AppColors.primary[500]
                        : AppColors.neutral[400],
                  ),
                  const HorizontalSpace(space: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: CustomTextStyles.textLMedium.copyWith(
                            color: AppColors.neutral[900],
                          ),
                        ),
                        Text(
                          widget.subTitle,
                          style: CustomTextStyles.textSRegular.copyWith(
                            color: AppColors.neutral[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              IconsJobeque.arrowright,
              size: 20,
              color: AppColors.neutral[900],
            ),
          ],
        ),
      ),
    );
  }
}
