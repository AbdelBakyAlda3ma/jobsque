import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_body.dart';

class AppliedJobScreenScaffold extends StatelessWidget {
  final List<ActiveAppliedJobEntity> listOfActiveJjobs;
  final String routeName;
  const AppliedJobScreenScaffold({
    super.key,
    required this.listOfActiveJjobs,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Applied Job',
      ),
      body: AppliedJobScreenBody(
        listOfActiveJjobs: listOfActiveJjobs,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        routeName: routeName,
      ),
    );
  }
}
