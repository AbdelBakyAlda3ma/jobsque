import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';

class ExperienceScreenBodyFormCompanyNameTextField extends StatefulWidget {
  const ExperienceScreenBodyFormCompanyNameTextField({
    super.key,
  });

  @override
  State<ExperienceScreenBodyFormCompanyNameTextField> createState() =>
      _ExperienceScreenBodyFormCompanyNameTextFieldState();
}

class _ExperienceScreenBodyFormCompanyNameTextFieldState
    extends State<ExperienceScreenBodyFormCompanyNameTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company name *',
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
          hintText: 'Enter your Company name...',
          onChanged: (value) {
            BlocProvider.of<AddExperienceBloc>(context).experience.compName =
                value;
          },
        ),
      ],
    );
  }
}
