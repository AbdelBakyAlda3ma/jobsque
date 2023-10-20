import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/features/onbording/presentation/screens/splash_screen.dart';
import '../../../auth/presentation/widget/has_current_user_widget.dart';

@RoutePage()
class WhichWillLaunchWidget extends StatelessWidget {
  static const id = 'WhichWillLaunchWidget';
  const WhichWillLaunchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (JobsqueSharedPrefrences.getBool('isFirstLaunch') == null) {
      JobsqueSharedPrefrences.setBool('isFirstLaunch', false);
      return const SplashScreen();
    } else {
      return const HasCurrenUserScreen();
    }
  }
}
