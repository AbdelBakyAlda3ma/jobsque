import 'package:flutter/material.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'login_screen_body_form_elevated_button.dart';
import 'login_screen_body_form_register_text_button.dart';
import 'login_screen_body_form_remember_me_and_forgot_password.dart';
import 'login_screen_body_form_text_form_field_of_email.dart';
import 'login_screen_body_form_text_form_field_of_password.dart';

class LoginScreenBodyForm extends StatefulWidget {
  const LoginScreenBodyForm({
    super.key,
  });

  @override
  State<LoginScreenBodyForm> createState() => _LoginScreenBodyFormState();
}

class _LoginScreenBodyFormState extends State<LoginScreenBodyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const LoginScreenBodyFormTextFormFieldOfEmail(),
            const VerticalSpace(space: 16),
            const LoginScreenBodyFormTextformFieldOfPassword(),
            const VerticalSpace(space: 20),
            const LoginScreenBodyFormRememberMeAndForgotPassword(),
            const Spacer(),
            const LoginScreenBodyFormRegisterTextButton(),
            const VerticalSpace(space: 24),
            LoginScreenBodyFormElevatedButton(
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
