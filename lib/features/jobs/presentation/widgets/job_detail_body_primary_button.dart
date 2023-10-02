import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';

class JobDetailBodyBrimaryButton extends StatelessWidget {
  const JobDetailBodyBrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0),
            Colors.white.withOpacity(0.8),
          ],
        ),
      ),
      child: PrimaryButton.large(
        onPressed: () {},
        text: 'Apply now',
      ),
    );
  }
}
