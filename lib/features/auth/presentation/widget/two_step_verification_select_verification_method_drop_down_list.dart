import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/verification_method_drop_down_list.dart';
import 'package:jobseque/core/widgets/custom_drop_down_text_field.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class TwoStepVerificationSelectVerificationMethodDropDownList
    extends StatefulWidget {
  const TwoStepVerificationSelectVerificationMethodDropDownList({Key? key})
      : super(key: key);
  @override
  State<TwoStepVerificationSelectVerificationMethodDropDownList>
      createState() =>
          _TwoStepVerificationSelectVerificationMethodDropDownListState();
}

class _TwoStepVerificationSelectVerificationMethodDropDownListState
    extends State<TwoStepVerificationSelectVerificationMethodDropDownList> {
  late SingleValueDropDownController _controller;

  @override
  void initState() {
    _controller = SingleValueDropDownController(
      data: verificationMethodList[0],
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
          "Select a verification method",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        CustomDropDownTextField(
          textStyle: CustomTextStyles.textMMedium,
          clearOption: false,
          dropDownItemCount: 2,
          enableSearch: false,
          controller: _controller,
          dropDownList: verificationMethodList,
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }
}
