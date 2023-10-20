import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body.dart';

class ExperienceScreenScaffold extends StatelessWidget {
  const ExperienceScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Experience'),
      body: ExperienceScreenBody(),
    );
  }
}
