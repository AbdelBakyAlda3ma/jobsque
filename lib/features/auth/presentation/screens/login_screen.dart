import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:jobseque/features/auth/domain/use_cases/login_use_case.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/login_bloc/login_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/login_screen_safe_area.dart';
import '../../../../core/utils/service_locator.dart';

@RoutePage()
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
      child: const LoginScreenSafeArea(),
    );
  }
}
