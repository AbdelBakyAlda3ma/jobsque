import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/text_form_field_of_email.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';
import '../../../../core/widgets/vertical_space.dart';

class BiodataStepContentFormEmailTextField extends StatelessWidget {
  const BiodataStepContentFormEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Email",
              style: CustomTextStyles.textLRegular.copyWith(
                color: AppColors.neutral[900],
              ),
            ),
            Text(
              '*',
              style: CustomTextStyles.textLRegular.copyWith(
                color: AppColors.danger[500],
              ),
            ),
          ],
        ),
        const VerticalSpace(space: 8),
        TextFormFieldOfEmail(
          onChanged: (value) {
            BlocProvider.of<AddActiveApplicationBloc>(context)
                .applyJobEntity
                .email = value;
            BlocProvider.of<CompeleteJobApplicationCubit>(context)
                .applyJobEntity
                .email = value;
          },
        ),
      ],
    );
  }
}
