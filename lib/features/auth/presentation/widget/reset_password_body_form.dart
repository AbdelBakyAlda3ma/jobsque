import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/text_form_field_of_email.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_body_form_elevated_button.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_body_form_login_text_button.dart';

import '../../../../core/widgets/vertical_space.dart';

class ResetPasswordBodyForm extends StatelessWidget {
  const ResetPasswordBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          TextFormFieldOfEmail(),
          Spacer(),
          ResetPasswordBodyFormLoginTextButton(),
          VerticalSpace(space: 24),
          ResetPasswordBodyFormElevatedButton(),
        ],
      ),
    );
  }
}
