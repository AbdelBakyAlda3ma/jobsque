import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';

class CsutomStepProgressIconComplete extends StatelessWidget {
  final double? size;
  const CsutomStepProgressIconComplete({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(
      IconsJobeque.tickCircle,
      size: size ?? 44,
      color: AppColors.primary[500],
    );
  }
}
