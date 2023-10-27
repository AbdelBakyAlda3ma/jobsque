import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_body.dart';

class SavedJobsScreenSafeArea extends StatelessWidget {
  const SavedJobsScreenSafeArea({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Saved'),
        body: const SavedJobsScreenBody(),
        bottomNavigationBar: CustomBottomNavigationBar(
          routeName: routeName,
        ),
      ),
    );
  }
}
