import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:jobseque/features/auth/domain/use_cases/change_password_user_case.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/change_password_bloc/change_password_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/change_password_profile_screen_safe_area.dart';

@RoutePage()
class ChangePasswordProfileScreen extends StatelessWidget {
  const ChangePasswordProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangePasswordBloc>(
      create: (context) => ChangePasswordBloc(
        changePasswordUseCase:
            ChangePasswordUseCase(authRepo: sL.get<AuthRepositoryImpl>()),
      ),
      child: const ChangePasswordProfileScreenSafeArea(),
    );
  }
}
