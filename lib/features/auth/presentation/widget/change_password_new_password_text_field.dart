import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/change_password_bloc/change_password_bloc.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/text_form_field_of_password_.dart';
import '../../../../core/widgets/vertical_space.dart';

class ChangePasswordNewPasswordTextField extends StatefulWidget {
  const ChangePasswordNewPasswordTextField({
    super.key,
  });

  @override
  State<ChangePasswordNewPasswordTextField> createState() =>
      _ChangePasswordNewPasswordTextFieldState();
}

class _ChangePasswordNewPasswordTextFieldState
    extends State<ChangePasswordNewPasswordTextField> {
  String? newPassword;
  String? confirmedPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter your new password",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        TextFormFieldOfPassword(
          onChanged: (newPassword) {
            this.newPassword = newPassword;
          },
          autovalidateMode: AutovalidateMode.disabled,
        ),
        const VerticalSpace(space: 20),
        Text(
          "Confirm your new password",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        TextFormFieldOfPassword(
          autovalidateMode: AutovalidateMode.disabled,
          onChanged: (confirmedPassword) {
            this.confirmedPassword = confirmedPassword;
          },
          validator: (value) {
            if (confirmedPassword != newPassword) {
              return 'The password does not match';
            }
            BlocProvider.of<ChangePasswordBloc>(context).password = newPassword;

            return null;
          },
        ),
      ],
    );
  }
}
