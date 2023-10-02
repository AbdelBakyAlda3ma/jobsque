import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/auth/presentation/widget/email_address_profile_screen_body.dart';

class EmailAddressProfileScreen extends StatelessWidget {
  const EmailAddressProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Email address'),
        body: EmailAddressProfileScreenBody(),
      ),
    );
  }
}
