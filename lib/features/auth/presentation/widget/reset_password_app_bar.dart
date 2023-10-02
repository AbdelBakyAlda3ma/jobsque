import 'package:flutter/material.dart';
import 'authentication_custom_app_bar.dart';

class ResetPasswordAppBAr extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const ResetPasswordAppBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AuthenticationCustomAppBar();
  }
}
