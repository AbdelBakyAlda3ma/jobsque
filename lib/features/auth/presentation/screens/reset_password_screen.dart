import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_app_bar.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ResetPasswordAppBAr(),
      body: ResetPasswordBody(),
    );
  }
}
