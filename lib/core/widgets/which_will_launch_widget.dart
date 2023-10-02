import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/features/onbording/presentation/screens/splash_screen.dart';

import '../../features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import '../../features/auth/presentation/widget/has_current_user_widget.dart';
import '../utils/service_locator.dart';

class WhichWillLaunchWidget extends StatelessWidget {
  static const id = 'WhichWillLaunchWidget';
  const WhichWillLaunchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (JobsqueSharedPrefrences.getBool('isFirstLaunch') == null) {
      JobsqueSharedPrefrences.setBool('isFirstLaunch', false);
      return const SplashScreen();
    } else {
      return BlocProvider(
        create: (context) =>
            sL.get<GetCurrentUserBloc>()..add(GetCurrentUserEvent()),
        child: const HasCurrenUserWidget(),
      );
    }
  }
}
