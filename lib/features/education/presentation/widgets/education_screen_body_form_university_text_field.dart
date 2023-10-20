import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';

class EducationScreenBodyFormUniversityTextField extends StatelessWidget {
  const EducationScreenBodyFormUniversityTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'University *',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          focusNode: FocusNode(),
          hintText: 'Enter your university...',
          onChanged: (value) {
            BlocProvider.of<AddEducationBloc>(context).education.universty =
                value;
          },
        ),
      ],
    );
  }
}
