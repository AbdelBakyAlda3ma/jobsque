import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/screens/login_screen.dart';
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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }
}
