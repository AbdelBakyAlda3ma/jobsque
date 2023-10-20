import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';

class ExperienceScreenBodyFormSaveButton extends StatelessWidget {
  final GlobalKey<FormState> _formKey;

  const ExperienceScreenBodyFormSaveButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PrimaryButton.large(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            BlocProvider.of<AddExperienceBloc>(context)
                .add(AddExperienceEvent());
          }
        },
        text: 'Save',
      ),
    );
  }
}
