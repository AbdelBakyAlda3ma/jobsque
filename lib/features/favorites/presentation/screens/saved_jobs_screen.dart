import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_body.dart';

@RoutePage()
class SavedJobsScreen extends StatelessWidget {
  const SavedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Saved'),
        body: SavedJobsScreenBody(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
