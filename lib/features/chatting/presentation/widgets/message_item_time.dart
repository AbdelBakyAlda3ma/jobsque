import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class MessageItemTime extends StatelessWidget {
  const MessageItemTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 2,
      child: Text(
        '10.00AM',
        style: CustomTextStyles.textSRegular.copyWith(
          color: AppColors.primary[500],
        ),
      ),
    );
  }
}
