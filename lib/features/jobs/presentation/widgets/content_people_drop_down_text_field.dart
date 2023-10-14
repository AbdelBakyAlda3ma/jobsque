import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import '../../../../core/dummy/jobs_drop_down_list.dart';
import '../../../../core/utils/functions/build_content_people_drop_down_text_field_borders.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_drop_down_text_field.dart';

class ContentPeopleDropDownTextField extends StatefulWidget {
  const ContentPeopleDropDownTextField({super.key});

  @override
  State<ContentPeopleDropDownTextField> createState() =>
      _ContentPeopleDropDownTextFieldState();
}

class _ContentPeopleDropDownTextFieldState
    extends State<ContentPeopleDropDownTextField> {
  late SingleValueDropDownController _controller;

  @override
  void initState() {
    _controller = SingleValueDropDownController(
      data: jobsDropDownList[0],
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
    return CustomDropDownTextField(
      textFieldDecoration: InputDecoration(
        constraints:
            const BoxConstraints.tightForFinite(height: 38, width: 160),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        disabledBorder: buildContentPeopleDropDownTextFieldOutlineInputBorder(),
        enabledBorder: buildContentPeopleDropDownTextFieldOutlineInputBorder(),
        focusedBorder: buildContentPeopleDropDownTextFieldFocusedBorder(),
      ),
      textStyle: CustomTextStyles.textSRegular.copyWith(
        color: AppColors.neutral[900],
      ),
      controller: _controller,
      clearOption: false,
      dropDownItemCount: 4,
      searchShowCursor: false,
      enableSearch: false,
      dropDownList: jobsDropDownList,
      onChanged: (value) {
        setState(() {});
      },
    );
  }
}
