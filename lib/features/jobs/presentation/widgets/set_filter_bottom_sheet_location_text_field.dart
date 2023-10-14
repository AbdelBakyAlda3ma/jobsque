import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/search_bloc/search_bloc.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/custom_text_field.dart';

class SetFilterBottmSheetLocationTextField extends StatefulWidget {
  const SetFilterBottmSheetLocationTextField({
    super.key,
  });

  @override
  State<SetFilterBottmSheetLocationTextField> createState() =>
      _SetFilterBottmSheetLocationTextFieldState();
}

class _SetFilterBottmSheetLocationTextFieldState
    extends State<SetFilterBottmSheetLocationTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        CustomTextField(
          onChanged: (value) {
            setState(() {
              BlocProvider.of<SearchBloc>(context).jobLocation = value;
            });
          },
          prefixIcon: const Icon(
            IconsJobeque.location,
            size: 20,
          ),
        ),
      ],
    );
  }
}
