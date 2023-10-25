import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_body.dart';

class CompleteProfileScreenScaffold extends StatelessWidget {
  const CompleteProfileScreenScaffold({
    super.key,
    required this.job,
  });

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompleteProfileScreenAppBar(
        job: job,
      ),
      body: const CompleteProfileScreenBody(),
    );
  }
}
