import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_body.dart';

@RoutePage()
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Complete Profile'),
        body: CompleteProfileScreenBody(),
      ),
    );
  }
}
