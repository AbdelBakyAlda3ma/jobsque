import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import '../../../../core/widgets/helper_text_and_text_button.dart';

class LoginScreenBodyFormRegisterTextButton extends StatelessWidget {
  const LoginScreenBodyFormRegisterTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HelperTextAndTextButton(
      helperText: 'Dont’t have an account?',
      textButtonLabel: 'Register',
      onTap: () {
        context.router.push(const CreateAccountRoute());
      },
    );
  }
}
