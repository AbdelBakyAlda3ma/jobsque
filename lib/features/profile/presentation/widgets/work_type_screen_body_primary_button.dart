import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';

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
          context.router.pushAndPopUntil(
            const WorkLocationRoute(),
            predicate: (Route<dynamic> route) => false,
          );
        },
      ),
    );
  }
}
