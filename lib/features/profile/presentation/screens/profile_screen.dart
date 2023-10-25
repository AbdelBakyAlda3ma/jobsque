import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import '../widgets/profile_screen_app_bar.dart';
import '../widgets/profile_screen_body.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  static String routeName = ProfileRoute.name;

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileScreenAppBar(),
      body: const ProfileScreenBody(),
      bottomNavigationBar: CustomBottomNavigationBar(
        routeName: routeName,
      ),
    );
  }
}
