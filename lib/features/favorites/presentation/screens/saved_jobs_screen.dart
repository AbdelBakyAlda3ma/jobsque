import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_screen_safe_area.dart';

@RoutePage()
class SavedJobsScreen extends StatelessWidget {
  static String routeName = SavedJobsRoute.name;

  const SavedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SavedJobsScreenSafeArea(
      routeName: routeName,
    );
  }
}
