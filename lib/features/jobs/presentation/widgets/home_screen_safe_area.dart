import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_app_bar.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_body.dart';

class HomeScreenSafeArea extends StatelessWidget {
  const HomeScreenSafeArea({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeScreenAppBar(
              userName: JobsqueSharedPrefrences.getString(kUserName)!,
            ),
            const HomeScreenBody(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          routeName: routeName,
        ),
      ),
    );
  }
}
