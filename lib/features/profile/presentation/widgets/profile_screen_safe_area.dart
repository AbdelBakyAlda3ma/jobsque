import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_screen_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_screen_body.dart';

class ProfileScreenSafeArea extends StatelessWidget {
  const ProfileScreenSafeArea({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ProfileScreenAppBar(),
        body: const ProfileScreenBody(),
        bottomNavigationBar: CustomBottomNavigationBar(
          routeName: routeName,
        ),
      ),
    );
  }
}
