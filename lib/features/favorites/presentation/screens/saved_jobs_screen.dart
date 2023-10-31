import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_screen_safe_area.dart';

import '../manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';

@RoutePage()
class SavedJobsScreen extends StatefulWidget {
  static String routeName = SavedJobsRoute.name;

  const SavedJobsScreen({super.key});

  @override
  State<SavedJobsScreen> createState() => _SavedJobsScreenState();
}

class _SavedJobsScreenState extends State<SavedJobsScreen> {
  @override
  void initState() {
    BlocProvider.of<GetFavoriteJobsBloc>(context).add(
      GetFavoriteJobsEvent(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SavedJobsScreenSafeArea(
      routeName: SavedJobsScreen.routeName,
    );
  }
}
