import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/strings/messages.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/login_bloc/login_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/login_screen_scaffold.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreenSafeArea extends StatelessWidget {
  const LoginScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) async {
          if (state is LoginSuccess) {
            showSuccessSnackBar(
              context: context,
              message: LOGIN_SUCCESS_MESSAGE,
            );
            await Future.delayed(const Duration(seconds: 1), () {
              context.router.popAndPush(
                const HasCurrenUserRoute(),
              );
            });
          } else if (state is LoginFailure) {
            showErrorSnackBar(
              context: context,
              message: state.failureMessage,
            );
          }
        },
        builder: (context, state) {
          if (state is LoginLoading) {
            return const ModalProgressHUD(
              inAsyncCall: true,
              child: LoginScreenScaffold(),
            );
          } else {
            return const LoginScreenScaffold();
          }
        },
      ),
    );
  }
}
