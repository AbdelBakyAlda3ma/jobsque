import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class PersonalDetailsScreenBodyFormBioTextField extends StatefulWidget {
  const PersonalDetailsScreenBodyFormBioTextField({
    super.key,
  });

  @override
  State<PersonalDetailsScreenBodyFormBioTextField> createState() =>
      _PersonalDetailsScreenBodyFormBioTextFieldState();
}

class _PersonalDetailsScreenBodyFormBioTextFieldState
    extends State<PersonalDetailsScreenBodyFormBioTextField> {
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
          onChanged: (value) {
            BlocProvider.of<AddPersonalDetailsBloc>(context).bio = value;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          prefixIcon: const Icon(
            IconsJobeque.edit,
            size: 20,
          ),
        ),
      ],
    );
  }
}
