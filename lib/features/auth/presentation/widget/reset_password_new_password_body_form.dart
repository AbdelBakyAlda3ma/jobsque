import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_new_password_body_form_elevated_button.dart';
import '../../../../core/widgets/text_form_field_of_password_.dart';

class ResetPasswordNewPasswordBodyForm extends StatelessWidget {
  const ResetPasswordNewPasswordBodyForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          TextFormFieldOfPassword(
            helperText: 'Password must be at least 8 characters',
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          VerticalSpace(space: 24),
          TextFormFieldOfPassword(
            helperText: 'Both password must match',
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          Spacer(),
          ResetPasswordNewPasswordBodyFormElevatedButton(),
        ],
      ),
    );
  }
}
