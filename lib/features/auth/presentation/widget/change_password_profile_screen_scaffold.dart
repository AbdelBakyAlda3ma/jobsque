import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import 'change_password_profile_screen_body.dart';

class ChangePasswordScreenProfileScreenScaffold extends StatelessWidget {
  const ChangePasswordScreenProfileScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Change password'),
      body: ChangePasswordProfileScreenBody(),
    );
  }
}
