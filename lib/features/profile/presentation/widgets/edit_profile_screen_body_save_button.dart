import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';

class EditProfileScreenBodySaveButton extends StatelessWidget {
  const EditProfileScreenBodySaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: PrimaryButton.large(
        onPressed: () {},
        text: 'Save  ',
      ),
    );
  }
}
