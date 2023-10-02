import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';

import '../../../../core/widgets/custom_bottom_navigation_bar.dart';
import '../widgets/home_screen_app_bar.dart';
import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  final UserEntity user;
  const HomeScreen({
    super.key,
    required this.user,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeScreenAppBar(
              userName: user.name,
            ),
            const HomeScreenBody(),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
