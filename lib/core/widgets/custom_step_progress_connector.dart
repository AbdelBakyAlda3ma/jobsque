import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import 'custom_dotted_divider.dart';

class CustomStepProgressConnector extends StatelessWidget {
  final bool isActiveConnector;
  final int connectorIndex;
  final Color? activeColor;
  final Color? disabledeColor;
  const CustomStepProgressConnector({
    super.key,
    required this.isActiveConnector,
    this.activeColor,
    this.disabledeColor,
    required this.connectorIndex,
  });

  @override
  Widget build(BuildContext context) {
    return DottedDivider(
      color: isActiveConnector
          ? activeColor ?? AppColors.primary[500]
          : disabledeColor ?? AppColors.neutral[400],
    );
  }
}
