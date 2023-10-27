import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/add_favorite_bloc/add_favorite_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/delete_favorite_bloc/delete_favorite_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/job_bloc/job_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_safe_area.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  static String routeName = HomeRoute.name;
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobBloc>(
          create: (context) => sL.get<JobBloc>()..add(GetAllJobsEvent()),
        ),
        BlocProvider<AddFavoriteBloc>(
          create: (context) => sL.get<AddFavoriteBloc>(),
        ),
        BlocProvider<DeleteFavoriteBloc>(
          create: (context) => sL.get<DeleteFavoriteBloc>(),
        ),
      ],
      child: HomeScreenSafeArea(
        routeName: routeName,
      ),
    );
  }
}
