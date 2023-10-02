import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'edit_profile_avatar.dart';

class EditProfileChangePhoto extends StatelessWidget {
  const EditProfileChangePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EditProfileAvatar(),
        const VerticalSpace(space: 8),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Change  Photo',
            style: CustomTextStyles.textLMedium.copyWith(
              color: AppColors.primary[500],
            ),
          ),
        ),
      ],
    );
  }
}
