import 'package:flutter/material.dart';

import 'authentication_custom_app_bar.dart';

class ResetPasswordNewPasswordAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ResetPasswordNewPasswordAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return const AuthenticationCustomAppBar();
  }
}
