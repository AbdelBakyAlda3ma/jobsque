import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/custom_drop_down_text_field.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';
import '../../../../core/dummy/jobs_type_drop_down_list.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ExperienceScreenBodyFormTypeOfWorkDropDownMenu extends StatefulWidget {
  const ExperienceScreenBodyFormTypeOfWorkDropDownMenu({Key? key})
      : super(key: key);
  @override
  State<ExperienceScreenBodyFormTypeOfWorkDropDownMenu> createState() =>
      _ExperienceScreenBodyFormTypeOfWorkDropDownMenuState();
}

class _ExperienceScreenBodyFormTypeOfWorkDropDownMenuState
    extends State<ExperienceScreenBodyFormTypeOfWorkDropDownMenu> {
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
          dropDownItemCount: 3,
          searchShowCursor: false,
          enableSearch: true,
          controller: _controller,
          dropDownList: jobsTypeDropDownList,
          onChanged: (jobType) {
            if (jobType is DropDownValueModel) {
              BlocProvider.of<AddExperienceBloc>(context).experience.typeWork =
                  jobType.name;
            } else {
              BlocProvider.of<AddExperienceBloc>(context).experience.typeWork =
                  null;
            }
          },
        ),
      ],
    );
  }
}
