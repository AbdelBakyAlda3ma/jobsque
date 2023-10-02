import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/text_form_field_of_email.dart';
import '../manager/blocs/login_bloc/login_bloc.dart';

class LoginScreenBodyFormTextFormFieldOfEmail extends StatefulWidget {
  const LoginScreenBodyFormTextFormFieldOfEmail({
    super.key,
  });

  @override
  State<LoginScreenBodyFormTextFormFieldOfEmail> createState() =>
      _LoginScreenBodyFormTextFormFieldOfEmailState();
}

class _LoginScreenBodyFormTextFormFieldOfEmailState
    extends State<LoginScreenBodyFormTextFormFieldOfEmail> {
  String? email;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LoginBloc>(context).email = email;

    return TextFormFieldOfEmail(
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          email = value;
        });
      },
    );
  }
}
