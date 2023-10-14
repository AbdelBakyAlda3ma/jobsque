import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/login_and_security_screen_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

@RoutePage()
class LoginAndSecurityProfileScreen extends StatelessWidget {
  const LoginAndSecurityProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Login and security'),
        body: LoginAndSecurityScreenBody(),
      ),
    );
  }
}
