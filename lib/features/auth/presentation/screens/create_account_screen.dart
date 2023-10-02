import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/strings/messages.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:jobseque/features/auth/domain/use_cases/register_use_case.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/register_bloc/register_bloc.dart';
import 'package:jobseque/features/profile/presentation/screens/work_type_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../widget/create_account_screen_scaffold.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(
        registerUseCase: RegisterUseCase(
          authRepo: sL.get<AuthRepositoryImpl>(),
        ),
      ),
      child: SafeArea(
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state is RegisterSuccess) {
              showSuccessSnackBar(
                context: context,
                message: REGISTER_SUCCESS_MESSAGE,
              );
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const WorkTypeScreen(),
                ),
                (Route<dynamic> route) => false,
              );
            } else if (state is RegisterFailure) {
              showErrorSnackBar(
                context: context,
                message: state.failureMessage,
              );
            }
          },
          builder: (context, state) {
            if (state is RegisterLoading) {
              return const ModalProgressHUD(
                inAsyncCall: true,
                child: CreateAccountScreenScaffold(),
              );
            } else {
              return const CreateAccountScreenScaffold();
            }
          },
        ),
      ),
    );
  }
}
