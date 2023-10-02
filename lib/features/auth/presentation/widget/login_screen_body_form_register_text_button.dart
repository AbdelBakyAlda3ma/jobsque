import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/screens/create_account_screen.dart';
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CreateAccountScreen(),
          ),
        );
      },
    );
  }
}
