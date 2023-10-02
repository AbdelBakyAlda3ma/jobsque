import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class RecentSearchsItem extends StatelessWidget {
  final String searchedJob;
  const RecentSearchsItem({super.key, required this.searchedJob});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          IconsJobeque.clock,
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
          IconsJobeque.closecircle,
          size: 22,
          color: AppColors.danger[500],
        ),
      ],
    );
  }
}
