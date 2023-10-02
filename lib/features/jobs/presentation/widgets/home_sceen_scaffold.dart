import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_bottom_navigation_bar.dart';
import '../../../auth/domain/entities/user_entity.dart';
import 'home_screen_app_bar.dart';
import 'home_screen_body.dart';

class HomeScreenScaffold extends StatelessWidget {
  const HomeScreenScaffold({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
