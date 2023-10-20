import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';

class EducationScreenBodyFormTitleTextField extends StatelessWidget {
  const EducationScreenBodyFormTitleTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Title',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomTextFormField(
          focusNode: FocusNode(),
          hintText: 'Enter your title...',
          onChanged: (value) {
            BlocProvider.of<AddEducationBloc>(context).education.title = value;
          },
        ),
      ],
    );
  }
}
