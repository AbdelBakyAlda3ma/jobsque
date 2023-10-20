import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/text_form_field_of_date.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';

class ExperienceScreenBodyFormStartYearTextField extends StatefulWidget {
  const ExperienceScreenBodyFormStartYearTextField({
    super.key,
  });

  @override
  State<ExperienceScreenBodyFormStartYearTextField> createState() =>
      _ExperienceScreenBodyFormStartYearTextFieldState();
}

class _ExperienceScreenBodyFormStartYearTextFieldState
    extends State<ExperienceScreenBodyFormStartYearTextField> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Start Year',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        TextFormFieldOfDate(
          hintText: 'Enter your start year...',
          controller: textEditingController,
          onChanged: (value) {
            BlocProvider.of<AddExperienceBloc>(context).experience.start =
                value;
          },
          onTapped: ((year, month) {
            setState(() {
              textEditingController.text = '$month $year';
              BlocProvider.of<AddExperienceBloc>(context).experience.start =
                  textEditingController.text;
            });
          }),
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
