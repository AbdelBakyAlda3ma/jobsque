import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';

import '../../../../core/widgets/primary_button.dart';

class PersonalDetailsScreenBodyFormSaveButton extends StatelessWidget {
  const PersonalDetailsScreenBodyFormSaveButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PrimaryButton.large(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            BlocProvider.of<AddPersonalDetailsBloc>(context)
                .add(AddPersonalDetailsEvent());
          }
        },
        text: 'Save',
      ),
    );
  }
}
