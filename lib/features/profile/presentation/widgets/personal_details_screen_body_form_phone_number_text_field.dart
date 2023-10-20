import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_phoen_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class PersonalDetailsScreenBodyFormPhoneNumberTextField
    extends StatelessWidget {
  const PersonalDetailsScreenBodyFormPhoneNumberTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'No.Handphone',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomPhoneTextField(
          onChanged: (value) {
            BlocProvider.of<AddPersonalDetailsBloc>(context).phoneNumber =
                value;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }
}
