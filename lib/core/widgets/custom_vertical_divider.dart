import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';

class CustomVerticalDivider extends StatelessWidget {
  final double height;
  const CustomVerticalDivider({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.neutral[200]!,
        ),
      ),
    );
  }
}
