import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/jobs/presentation/manager/show_submitted_jobs_bloc/show_submitted_jobs_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_safe_area.dart';

import '../manager/blocs/Job_bloc/job_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  static String routeName = HomeRoute.name;
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<JobBloc>(context).add(GetAllJobsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShowSubmittedJobsBloc>(
      lazy: false,
      create: (context) => sL.get<ShowSubmittedJobsBloc>()
        ..add(
          ShowSubmittedJobsEvent(),
        ),
      child: HomeScreenSafeArea(
        routeName: HomeScreen.routeName,
      ),
    );
  }
}
