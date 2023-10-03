import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/core/widgets/custom_header.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:jobseque/features/auth/domain/use_cases/change_password_user_case.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/change_password_bloc/change_password_bloc.dart';
import 'package:jobseque/features/auth/presentation/screens/change_password_profile_screen.dart';
import 'package:jobseque/features/auth/presentation/widget/login_and_security_profile_item.dart';

class LoginAndSecurityScreenBody extends StatelessWidget {
  const LoginAndSecurityScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(space: 12),
        const CustomHeader(headerTitle: 'Accont access'),
        const VerticalSpace(space: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const LoginAndSecuriryProfileItem(
                text: 'Email address',
                valueText: 'rafifdian12@gmail.com',
              ),
              const LoginAndSecuriryProfileItem(
                text: 'Phone number',
              ),
              LoginAndSecuriryProfileItem(
                text: 'Change password',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider<ChangePasswordBloc>(
                        create: (context) => ChangePasswordBloc(
                          changePasswordUseCase: ChangePasswordUseCase(
                              authRepo: sL.get<AuthRepositoryImpl>()),
                        ),
                        child: const ChangePasswordProfileScreen(),
                      ),
                    ),
                  );
                },
              ),
              const LoginAndSecuriryProfileItem(
                text: 'Two-step verification',
                valueText: 'Non active',
              ),
              const LoginAndSecuriryProfileItem(
                text: 'Face ID',
              ),
            ],
          ),
        )
      ],
    );
  }
}
