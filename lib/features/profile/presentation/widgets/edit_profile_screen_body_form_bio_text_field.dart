import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class EditProfileScreenBodyFormBioTextField extends StatefulWidget {
  const EditProfileScreenBodyFormBioTextField({
    super.key,
  });

  @override
  State<EditProfileScreenBodyFormBioTextField> createState() =>
      _EditProfileScreenBodyFormBioTextFieldState();
}

class _EditProfileScreenBodyFormBioTextFieldState
    extends State<EditProfileScreenBodyFormBioTextField> {
  FocusNode bioFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bio',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomTextFormField(
          focusNode: bioFocus,
          hintText: 'Enter your bio',
          onChanged: (value) {},
          prefixIcon: const Icon(
            IconsJobeque.edit,
            size: 20,
          ),
        ),
      ],
    );
  }
}
