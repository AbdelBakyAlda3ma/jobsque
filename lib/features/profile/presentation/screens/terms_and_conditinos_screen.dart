import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';

import '../widgets/terms_and_conditions_screen_body.dart';

class TermsAndConditinosScreen extends StatelessWidget {
  const TermsAndConditinosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Terms & Conditions'),
        body: TermsAndConditionsScreenBody(),
      ),
    );
  }
}
