import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/strings/messages.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/change_password_bloc/change_password_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/change_password_profile_screen_scaffold.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ChangePasswordProfileScreenSafeArea extends StatelessWidget {
  const ChangePasswordProfileScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
        listener: (context, state) {
          if (state is ChangePasswordSuccess) {
            showSuccessSnackBar(
              context: context,
              message: CHANGE_PASSWORD_SUSCESS_MESSAGE,
            );

            context.router.pushAndPopUntil(
              const ChangePasswordSuccessfullyRoute(),
              predicate: (route) => route.isCurrent,
            );
          }
          if (state is ChangePasswordFailure) {
            showErrorSnackBar(
              context: context,
              message: state.errorMessage,
            );
          }
        },
        builder: (context, state) {
          if (state is ChangePasswordLoading) {
            return const ModalProgressHUD(
              inAsyncCall: true,
              child: ChangePasswordScreenProfileScreenScaffold(),
            );
          } else {
            return const ChangePasswordScreenProfileScreenScaffold();
          }
        },
      ),
    );
  }
}
