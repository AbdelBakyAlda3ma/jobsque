import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/vertical_space.dart';

class PersonalDetailsScreenBodyFormAddressTextField extends StatefulWidget {
  const PersonalDetailsScreenBodyFormAddressTextField({
    super.key,
  });

  @override
  State<PersonalDetailsScreenBodyFormAddressTextField> createState() =>
      _PersonalDetailsScreenBodyFormAddressTextFieldState();
}

class _PersonalDetailsScreenBodyFormAddressTextFieldState
    extends State<PersonalDetailsScreenBodyFormAddressTextField> {
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
          onChanged: (value) {
            BlocProvider.of<AddPersonalDetailsBloc>(context).address = value;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          prefixIcon: const Icon(
            IconsJobeque.location,
            size: 20,
          ),
        ),
      ],
    );
  }
}
