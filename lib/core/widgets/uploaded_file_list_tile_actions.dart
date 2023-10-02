import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class UploadPortfolioListTileActins extends StatelessWidget {
  const UploadPortfolioListTileActins({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          IconsJobeque.edit,
          size: 24,
          color: AppColors.primary[500],
        ),
        const HorizontalSpace(space: 8),
        Icon(
          IconsJobeque.closecircle,
          size: 24,
          color: AppColors.danger[500],
        ),
      ],
    );
  }
}
