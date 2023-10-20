import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body.dart';

class EducationScreenScaffold extends StatelessWidget {
  const EducationScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Education'),
      body: EducationScreenBody(),
    );
  }
}
