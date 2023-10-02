import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/register_bloc/register_bloc.dart';

import '../../../../core/widgets/text_form_field_of_email.dart';

class CreateAccountScreenBodyFormTextFormFieldOfEmail extends StatefulWidget {
  const CreateAccountScreenBodyFormTextFormFieldOfEmail({
    super.key,
  });

  @override
  State<CreateAccountScreenBodyFormTextFormFieldOfEmail> createState() =>
      _CreateAccountScreenBodyFormTextFormFieldOfEmailState();
}

class _CreateAccountScreenBodyFormTextFormFieldOfEmailState
    extends State<CreateAccountScreenBodyFormTextFormFieldOfEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormFieldOfEmail(
      onChanged: (value) {
        setState(() {
          BlocProvider.of<RegisterBloc>(context).email = value;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          BlocProvider.of<RegisterBloc>(context).email = value;
        });
      },
    );
  }
}
