import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/change_password_bloc/change_password_bloc.dart';

import '../../../../core/widgets/primary_button.dart';

class ChangePasswordProfileSaveButton extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  const ChangePasswordProfileSaveButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              BlocProvider.of<ChangePasswordBloc>(context).add(
                ChangePasswordEvent(),
              );
            }
          },
          text: 'Save'),
    );
  }
}
