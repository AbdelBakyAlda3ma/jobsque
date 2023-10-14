import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/dummy/salary_list.dart';
import 'package:jobseque/core/widgets/custom_drop_down_text_field.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/search_bloc/search_bloc.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/vertical_space.dart';

class SetFilterBottomSheetSalaryDropDownMenu extends StatefulWidget {
  const SetFilterBottomSheetSalaryDropDownMenu({Key? key}) : super(key: key);
  @override
  State<SetFilterBottomSheetSalaryDropDownMenu> createState() =>
      _SetFilterBottomSheetSalaryDropDownMenuState();
}

class _SetFilterBottomSheetSalaryDropDownMenuState
    extends State<SetFilterBottomSheetSalaryDropDownMenu> {
  late SingleValueDropDownController _controller;
  FocusNode searchFocus = FocusNode();
  FocusNode textFieldFocus = FocusNode();

  @override
  void initState() {
    _controller = SingleValueDropDownController();
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
          'Salary',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        CustomDropDownTextField(
          textFieldFocusNode: textFieldFocus,
          searchFocusNode: searchFocus,
          textStyle: CustomTextStyles.textMMedium,
          clearOption: true,
          dropDownItemCount: 3,
          searchShowCursor: true,
          enableSearch: true,
          searchKeyboardType: TextInputType.number,
          controller: _controller,
          dropDownList: salaryDropDownList,
          onChanged: (salaryItem) {
            setState(() {
              if (salaryItem is DropDownValueModel) {
                BlocProvider.of<SearchBloc>(context).jobSalary =
                    salaryItem.value;
              } else {
                BlocProvider.of<SearchBloc>(context).jobSalary = null;
              }
            });
          },
          prefixIcon: const Icon(
            IconsJobeque.dollarcircle,
            size: 20,
          ),
        ),
      ],
    );
  }
}
