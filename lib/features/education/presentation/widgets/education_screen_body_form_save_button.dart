import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';

class EducationScreenBodyFormSaveButton extends StatelessWidget {
  const EducationScreenBodyFormSaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PrimaryButton.large(
        onPressed: () {},
        text: 'Save',
      ),
    );
  }
}
