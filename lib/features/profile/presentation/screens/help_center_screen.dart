import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';

import '../widgets/help_center_screen_body.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(title: 'Help Center'),
      body: HelpCenterScreenBody(),
    ));
  }
}
