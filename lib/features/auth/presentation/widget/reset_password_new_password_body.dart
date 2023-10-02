import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_new_password_body_form.dart';
import 'package:jobseque/features/auth/presentation/widget/reset_password_new_password_body_header.dart';

class ResetPasswordNewPasswordBody extends StatelessWidget {
  const ResetPasswordNewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                VerticalSpace(space: 24),
                ResetPasswordNewPasswordBodyHeader(),
                VerticalSpace(space: 40),
                ResetPasswordNewPasswordBodyForm(),
                VerticalSpace(space: 9),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
