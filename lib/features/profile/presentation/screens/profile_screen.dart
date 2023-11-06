import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_image_bloc/get_profile_image_bloc.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_screen_safe_area.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  static String routeName = ProfileRoute.name;

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetProfileImageBloc>(
      lazy: false,
      create: (context) => sL.get<GetProfileImageBloc>()
        ..add(
          GetProfileImageEvent(),
        ),
      child: ProfileScreenSafeArea(
        routeName: routeName,
      ),
    );
  }
}
