import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/text_form_field_of_date.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';

class EducationScreenBodyFormEndYearTextField extends StatefulWidget {
  const EducationScreenBodyFormEndYearTextField({
    super.key,
  });

  @override
  State<EducationScreenBodyFormEndYearTextField> createState() =>
      _EducationScreenBodyFormEndYearTextFieldState();
}

class _EducationScreenBodyFormEndYearTextFieldState
    extends State<EducationScreenBodyFormEndYearTextField> {
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
          'End Year',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        TextFormFieldOfDate(
          hintText: 'Enter your End year...',
          controller: textEditingController,
          onChanged: (value) {
            BlocProvider.of<AddEducationBloc>(context).education.end = value;
          },
          onTapped: ((year, month) {
            setState(() {
              textEditingController.text = '$month $year';
              BlocProvider.of<AddEducationBloc>(context).education.end =
                  textEditingController.text;
            });
          }),
        ),
      ],
    );
  }
}
