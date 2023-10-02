import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_new_password_body.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_new_password_app_bar.dart';

class ResetPasswordNewPasswordScreen extends StatelessWidget {
  const ResetPasswordNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ResetPasswordNewPasswordAppBar(),
      body: ResetPasswordNewPasswordBody(),
    );
  }
}
