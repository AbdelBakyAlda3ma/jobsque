import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_drop_down_text_field.dart';

import '../../../../core/dummy/jobs_type_drop_down_list.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ExperienceTypeOfWorkDropDownMenu extends StatefulWidget {
  const ExperienceTypeOfWorkDropDownMenu({Key? key}) : super(key: key);
  @override
  State<ExperienceTypeOfWorkDropDownMenu> createState() =>
      _ExperienceTypeOfWorkDropDownMenuState();
}

class _ExperienceTypeOfWorkDropDownMenuState
    extends State<ExperienceTypeOfWorkDropDownMenu> {
  late SingleValueDropDownController _controller;

  @override
  void initState() {
    _controller = SingleValueDropDownController(
      data: jobsTypeDropDownList[0],
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Type of work',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        CustomDropDownTextField(
          textStyle: CustomTextStyles.textMMedium,
          clearOption: false,
          dropDownItemCount: 2,
          searchShowCursor: false,
          enableSearch: true,
          controller: _controller,
          dropDownList: jobsTypeDropDownList,
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }
}
