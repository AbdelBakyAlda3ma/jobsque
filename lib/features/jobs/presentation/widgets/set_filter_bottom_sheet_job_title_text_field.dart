import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/manager/search_bloc/search_bloc.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/custom_text_field.dart';

class SetFilterBottmSheetJobTitleTextField extends StatefulWidget {
  const SetFilterBottmSheetJobTitleTextField({
    super.key,
  });

  @override
  State<SetFilterBottmSheetJobTitleTextField> createState() =>
      _SetFilterBottmSheetJobTitleTextFieldState();
}

class _SetFilterBottmSheetJobTitleTextFieldState
    extends State<SetFilterBottmSheetJobTitleTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Job Title',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        CustomTextField(
          onChanged: (value) {
            setState(() {
              BlocProvider.of<SearchBloc>(context).jobName = value;
            });
          },
          prefixIcon: const Icon(
            IconsJobeque.edit,
            size: 20,
          ),
        ),
      ],
    );
  }
}
