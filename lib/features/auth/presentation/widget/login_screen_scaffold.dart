import 'package:flutter/material.dart';

import 'login_screen_app_bar.dart';
import 'login_screen_body.dart';

class LoginScreenScaffold extends StatelessWidget {
  const LoginScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LoginScreenAppBar(),
      body: LoginScreenBody(),
    );
  }
}
