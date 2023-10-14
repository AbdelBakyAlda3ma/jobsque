import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/text_form_field_of_user_name_.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/register_bloc/register_bloc.dart';

class CreateAccountScreenBodyFormTextFormFieldOfUserName
    extends StatefulWidget {
  const CreateAccountScreenBodyFormTextFormFieldOfUserName({
    super.key,
  });

  @override
  State<CreateAccountScreenBodyFormTextFormFieldOfUserName> createState() =>
      _CreateAccountScreenBodyFormTextFormFieldOfUserNameState();
}

class _CreateAccountScreenBodyFormTextFormFieldOfUserNameState
    extends State<CreateAccountScreenBodyFormTextFormFieldOfUserName> {
  String? name;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<RegisterBloc>(context).name = name;

    return TextFormFieldOfUserName(
      onChanged: (value) {
        setState(() {
          name = value;
        });
        log(name.toString());
      },
      onFieldSubmitted: (value) {
        setState(() {
          name = value;
        });
      },
    );
  }
}
