import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/register_bloc/register_bloc.dart';

import '../../../../core/widgets/primary_button.dart';

class CreateAccountScreenBodyFormElevatedButton extends StatefulWidget {
  final GlobalKey<FormState> _formKey;

  const CreateAccountScreenBodyFormElevatedButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  @override
  State<CreateAccountScreenBodyFormElevatedButton> createState() =>
      _CreateAccountScreenBodyFormElevatedButtonState();
}

class _CreateAccountScreenBodyFormElevatedButtonState
    extends State<CreateAccountScreenBodyFormElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
          text: 'Create account',
          onPressed: () {
            if (widget._formKey.currentState!.validate()) {
              BlocProvider.of<RegisterBloc>(context).add(RegisterUserEvent());
            }
          }),
    );
  }
}
