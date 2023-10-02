import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class PopularSearchsItem extends StatelessWidget {
  final String searchedJob;
  const PopularSearchsItem({super.key, required this.searchedJob});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          IconsJobeque.searchstatus,
          size: 16,
        ),
        const HorizontalSpace(space: 8),
        Text(
          searchedJob,
          style: CustomTextStyles.textMRegular
              .copyWith(color: AppColors.neutral[900]),
        ),
        const Spacer(),
        Icon(
          IconsJobeque.arrowrightcircle,
          size: 22,
          color: AppColors.primary[500],
        ),
      ],
    );
  }
}
