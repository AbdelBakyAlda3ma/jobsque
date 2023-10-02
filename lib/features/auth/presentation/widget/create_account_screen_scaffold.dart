import 'package:flutter/material.dart';

import 'create_account_screen_app_bar.dart';
import 'create_account_screen_body.dart';

class CreateAccountScreenScaffold extends StatelessWidget {
  const CreateAccountScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CreateAccountScreenAppBar(),
      body: CreateAccountScreenBody(),
    );
  }
}
