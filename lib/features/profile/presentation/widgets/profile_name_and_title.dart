import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class ProfileNameAndTilte extends StatelessWidget {
  const ProfileNameAndTilte({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          JobsqueSharedPrefrences.getString(kUserName) ?? '',
          textScaleFactor: 1,
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        Text(
          'Senior UI/UX Designer',
          textScaleFactor: 1,
          style: CustomTextStyles.textMRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
