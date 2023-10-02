import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class LoginScreenBodyHeader extends StatelessWidget {
  const LoginScreenBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style:
              CustomTextStyles.h2Medium.copyWith(color: AppColors.neutral[900]),
        ),
        const VerticalSpace(space: 8),
        Text(
          'Please login to find your dream job',
          style: CustomTextStyles.textLRegular
              .copyWith(color: AppColors.neutral[500]),
        ),
      ],
    );
  }
}
