import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
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
              LoginAndSecuriryProfileItem(
                text: 'Email address',
                valueText: JobsqueSharedPrefrences.getString(kUserEmail),
                route: const EmailAddressProfileRoute(),
              ),
              const LoginAndSecuriryProfileItem(
                text: 'Phone number',
                route: PhoneNumberProfileRoute(),
              ),
              const LoginAndSecuriryProfileItem(
                text: 'Change password',
                route: ChangePasswordProfileRoute(),
              ),
              const LoginAndSecuriryProfileItem(
                text: 'Two-step verification',
                valueText: 'Non active',
                route: TwoStepVerificationProfileRoute(),
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
