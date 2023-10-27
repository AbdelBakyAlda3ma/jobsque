import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/delete_favorite_bloc/delete_favorite_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';

@RoutePage()
class SavedWrapperWidget extends StatelessWidget {
  const SavedWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetFavoriteJobsBloc>(
          create: (context) => sL.get<GetFavoriteJobsBloc>()
            ..add(
              GetFavoriteJobsEvent(),
            ),
        ),
        BlocProvider<DeleteFavoriteBloc>(
          create: (context) => sL.get<DeleteFavoriteBloc>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
