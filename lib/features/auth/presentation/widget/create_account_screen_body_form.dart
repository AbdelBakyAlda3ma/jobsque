import 'package:flutter/material.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'create_account_screen_body_form_login_text_button.dart';
import 'create_account_screen_body_form_elevated_button.dart';
import 'create_account_screen_body_form_text_form_field_of_email.dart';
import 'create_account_screen_body_form_text_form_field_of_password.dart';
import 'create_account_screen_body_form_text_form_field_of_user_name.dart';

class CreateAccountScreenBodyForm extends StatefulWidget {
  const CreateAccountScreenBodyForm({
    super.key,
  });

  @override
  State<CreateAccountScreenBodyForm> createState() =>
      _CreateAccountScreenBodyFormState();
}

class _CreateAccountScreenBodyFormState
    extends State<CreateAccountScreenBodyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const CreateAccountScreenBodyFormTextFormFieldOfUserName(),
            const VerticalSpace(space: 16),
            const CreateAccountScreenBodyFormTextFormFieldOfEmail(),
            const VerticalSpace(space: 16),
            const CreateAccountScreenBodyFormTextFormFieldOfPassword(),
            const Spacer(),
            const CreateAccountScreenBodyFormLoginTextButton(),
            const VerticalSpace(space: 24),
            CreateAccountScreenBodyFormElevatedButton(
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
