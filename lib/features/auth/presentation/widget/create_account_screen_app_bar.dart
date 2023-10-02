import 'package:flutter/material.dart';
import 'authentication_custom_app_bar.dart';

class CreateAccountScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CreateAccountScreenAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return const AuthenticationCustomAppBar();
  }
}
