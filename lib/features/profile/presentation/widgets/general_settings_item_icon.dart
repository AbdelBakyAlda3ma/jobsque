import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';

class GeneralSettingsItemIcon extends StatelessWidget {
  final IconData icon;
  const GeneralSettingsItemIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: AppColors.primary[100],
      child: Icon(
        icon,
        size: 20,
        color: AppColors.primary[500],
      ),
    );
  }
}
