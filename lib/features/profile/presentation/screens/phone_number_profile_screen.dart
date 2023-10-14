import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/phone_number_profile_screen_body.dart';

@RoutePage()
class PhoneNumberProfileScreen extends StatelessWidget {
  const PhoneNumberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Phone number'),
        body: PhoneNumberProfileScreenBody(),
      ),
    );
  }
}
