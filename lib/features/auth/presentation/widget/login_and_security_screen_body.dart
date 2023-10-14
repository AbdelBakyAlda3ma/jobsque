import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/custom_header.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
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
                  context.router.push(const ChangePasswordProfileRoute());
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
