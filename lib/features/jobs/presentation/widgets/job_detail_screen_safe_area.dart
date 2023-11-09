import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_detail_screen_scaffold.dart';

class JobDetailScreenSafeArea extends StatelessWidget {
  const JobDetailScreenSafeArea({
    super.key,
    required this.job,
  });

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: JobDetailScreenScaffold(job: job),
    );
  }
}
