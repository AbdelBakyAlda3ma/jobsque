import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import '../../../../core/widgets/helper_text_and_text_button.dart';

class CreateAccountScreenBodyFormLoginTextButton extends StatelessWidget {
  const CreateAccountScreenBodyFormLoginTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HelperTextAndTextButton(
      helperText: 'Already have an account?',
      textButtonLabel: 'Login',
      onTap: () {
        context.router.pushAndPopUntil(
          const LoginRoute(),
          predicate: (route) => route.isCurrent,
        );
      },
    );
  }
}
