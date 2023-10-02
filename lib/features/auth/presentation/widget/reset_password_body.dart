import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_body_form.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_body_header.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          VerticalSpace(space: 24),
          ResetPasswordBodyHeader(),
          VerticalSpace(space: 40),
          ResetPasswordBodyForm(),
          VerticalSpace(space: 9),
        ],
      ),
    );
  }
}
