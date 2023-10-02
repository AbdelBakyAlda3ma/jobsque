import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/loding_screen.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import 'package:jobseque/features/auth/presentation/screens/login_screen.dart';
import 'package:jobseque/features/jobs/presentation/screens/home_screen.dart';

class HasCurrenUserWidget extends StatelessWidget {
  const HasCurrenUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetCurrentUserBloc, GetCurrentUserState>(
      listener: (context, state) {
        if (state is GetCurrentUserSuccess) {
          Future.delayed(const Duration(milliseconds: 2000), () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  user: state.user,
                ),
              ),
              (Route<dynamic> route) => false,
            );
          });
        }
        if (state is GetCurrentUserFailure) {
          Future.delayed(const Duration(milliseconds: 2000), () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
              (Route<dynamic> route) => false,
            );
          });
        }
      },
      builder: (context, state) {
        return const LoadingScreen();
      },
    );
  }
}
