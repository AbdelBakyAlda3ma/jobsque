import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/screens/login_screen.dart';
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }
}
