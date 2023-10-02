import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class JobCardCategoryItem extends StatelessWidget {
  final String category;
  const JobCardCategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 65,
      height: 26,
      decoration: BoxDecoration(
        color: AppColors.primary[100],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        category,
        style: CustomTextStyles.textSRegular
            .copyWith(color: AppColors.primary[500]),
      ),
    );
  }
}
