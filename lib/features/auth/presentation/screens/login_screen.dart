import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/strings/messages.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:jobseque/features/auth/domain/use_cases/login_use_case.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/login_bloc/login_bloc.dart';
import 'package:jobseque/features/jobs/presentation/screens/home_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../core/utils/service_locator.dart';
import '../widget/login_screen_scaffold.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        loginUseCase: LoginUseCase(
          authRepo: sL.get<AuthRepositoryImpl>(),
        ),
      ),
      child: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              showSuccessSnackBar(
                context: context,
                message: LOGIN_SUCCESS_MESSAGE,
              );
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                    user: state.user,
                  ),
                ),
                (Route<dynamic> route) => false,
              );
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
      ),
    );
  }
}
