import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/screens/work_location_screen.dart';

import '../../../../core/widgets/primary_button.dart';

class WorkTypeBodyPrimaryButton extends StatelessWidget {
  const WorkTypeBodyPrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
        text: 'Next',
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const WorkLocationScreen(),
              ),
              (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
