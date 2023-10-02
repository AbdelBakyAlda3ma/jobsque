import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/vertical_space.dart';

class EditProfileScreenBodyFormAddressTextField extends StatefulWidget {
  const EditProfileScreenBodyFormAddressTextField({
    super.key,
  });

  @override
  State<EditProfileScreenBodyFormAddressTextField> createState() =>
      _EditProfileScreenBodyFormAddressTextFieldState();
}

class _EditProfileScreenBodyFormAddressTextFieldState
    extends State<EditProfileScreenBodyFormAddressTextField> {
  FocusNode addressFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomTextFormField(
          focusNode: addressFocus,
          hintText: 'Enter your address',
          onChanged: (value) {},
          prefixIcon: const Icon(
            IconsJobeque.location,
            size: 20,
          ),
        ),
      ],
    );
  }
}
