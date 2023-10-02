import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/vertical_space.dart';

class ExperienceScreenBodyFormLocationTextField extends StatefulWidget {
  const ExperienceScreenBodyFormLocationTextField({
    super.key,
  });

  @override
  State<ExperienceScreenBodyFormLocationTextField> createState() =>
      _ExperienceScreenBodyFormLocationTextFieldState();
}

class _ExperienceScreenBodyFormLocationTextFieldState
    extends State<ExperienceScreenBodyFormLocationTextField> {
  FocusNode locationFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomTextFormField(
          onChanged: (value) {
            setState(() {});
          },
          onFieldSubmitted: (value) {
            setState(() {});
          },
          focusNode: locationFocus,
          hintText: 'Enter the location here...',
          prefixIcon: const Icon(
            IconsJobeque.location,
            size: 20,
          ),
        ),
      ],
    );
  }
}
