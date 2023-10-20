import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';

class EducationScreenBodyFormSaveButton extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  const EducationScreenBodyFormSaveButton({
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
            BlocProvider.of<AddEducationBloc>(context).add(AddEducationEvent());
          }
        },
        text: 'Save',
      ),
    );
  }
}
