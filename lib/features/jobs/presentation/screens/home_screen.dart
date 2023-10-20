import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/job_bloc/job_bloc.dart';
import '../../../../core/widgets/custom_bottom_navigation_bar.dart';
import '../widgets/home_screen_app_bar.dart';
import '../widgets/home_screen_body.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  final UserEntity user;
  const HomeScreen({
    super.key,
    required this.user,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider<JobBloc>(
      create: (context) => sL.get<JobBloc>()..add(GetAllJobsEvent()),
      child: SafeArea(
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
      ),
    );
  }
}
