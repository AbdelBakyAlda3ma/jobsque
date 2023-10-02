import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'change_password_new_password_text_field.dart';
import 'change_password_old_password_text_field.dart';
import 'change_password_profile_save_button.dart';

class ChangePasswordProfileScreenBody extends StatefulWidget {
  const ChangePasswordProfileScreenBody({super.key});

  @override
  State<ChangePasswordProfileScreenBody> createState() =>
      _ChangePasswordProfileScreenBodyState();
}

class _ChangePasswordProfileScreenBodyState
    extends State<ChangePasswordProfileScreenBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VerticalSpace(space: 24),
                  const ChangePasswordOldPasswordTextField(),
                  const VerticalSpace(space: 20),
                  const ChangePasswordNewPasswordTextField(),
                  const VerticalSpace(space: 24),
                  const Spacer(),
                  ChangePasswordProfileSaveButton(
                    formKey: _formKey,
                  ),
                  const VerticalSpace(space: 9),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
