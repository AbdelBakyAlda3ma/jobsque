import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_datails_screen_body.dart';

class PersonalDetailsScreenScaffold extends StatelessWidget {
  const PersonalDetailsScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Personal Details',
      ),
      body: PersonalDetailsScreenBody(),
    );
  }
}
