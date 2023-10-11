import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body.dart';

@RoutePage()
class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Education'),
        body: EducationScreenBody(),
      ),
    );
  }
}
