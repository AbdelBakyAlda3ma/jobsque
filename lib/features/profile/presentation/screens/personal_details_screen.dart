import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/change_profile_image_bloc/change_profile_image_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_image_bloc/get_profile_image_bloc.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_details_screen_safe_area.dart';

@RoutePage()
class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddPersonalDetailsBloc>(
          create: (context) => sL.get<AddPersonalDetailsBloc>(),
        ),
        BlocProvider<ChangeProfileImageBloc>(
          create: (context) => sL.get<ChangeProfileImageBloc>(),
        ),
        BlocProvider<GetProfileImageBloc>(
          create: (context) => sL.get<GetProfileImageBloc>()
            ..add(
              GetProfileImageEvent(),
            ),
        )
      ],
      child: const PersonalDetailsScreenSafeArea(),
    );
  }
}
