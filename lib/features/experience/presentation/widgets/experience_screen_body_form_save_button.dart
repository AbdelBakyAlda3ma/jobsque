import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';

class ExperienceScreenBodyFormSaveButton extends StatelessWidget {
  const ExperienceScreenBodyFormSaveButton({
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
