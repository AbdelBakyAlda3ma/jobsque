import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';
import '../../../auth/presentation/screens/account_has_been_set_up_screen.dart';

class WorkLocationBodyPrimaryButton extends StatelessWidget {
  const WorkLocationBodyPrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
        text: 'Next',
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AccountHasBeenSetUpScreen(),
            ),
          );
        },
      ),
    );
  }
}
