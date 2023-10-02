import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/login_bloc/login_bloc.dart';

import '../../../../core/widgets/primary_button.dart';

class LoginScreenBodyFormElevatedButton extends StatefulWidget {
  final GlobalKey<FormState> _formKey;

  const LoginScreenBodyFormElevatedButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  @override
  State<LoginScreenBodyFormElevatedButton> createState() =>
      _LoginScreenBodyFormElevatedButtonState();
}

class _LoginScreenBodyFormElevatedButtonState
    extends State<LoginScreenBodyFormElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
          text: 'Login',
          onPressed: () {
            if (widget._formKey.currentState!.validate()) {
              BlocProvider.of<LoginBloc>(context).add(LoginUserEvent());
            }
          }),
    );
  }
}
