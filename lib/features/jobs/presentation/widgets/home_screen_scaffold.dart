import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/Job_bloc/job_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_app_bar.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_body.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_bloc/get_profile_bloc.dart';

class HomeScreenScaffold extends StatelessWidget {
  const HomeScreenScaffold({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobBloc>(
          create: (context) => sL.get<JobBloc>()..add(GetAllJobsEvent()),
        ),
        BlocProvider<GetProfileBloc>(
          create: (context) => sL.get<GetProfileBloc>()..add(GetProfileEvent()),
        )
      ],
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
