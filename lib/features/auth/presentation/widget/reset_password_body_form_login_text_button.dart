import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import '../../../../core/widgets/helper_text_and_text_button.dart';

class ResetPasswordBodyFormLoginTextButton extends StatelessWidget {
  const ResetPasswordBodyFormLoginTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HelperTextAndTextButton(
      helperText: 'You remember your password',
      textButtonLabel: 'Login',
      onTap: () {
        context.router.push(const LoginRoute());
      },
    );
  }
}
