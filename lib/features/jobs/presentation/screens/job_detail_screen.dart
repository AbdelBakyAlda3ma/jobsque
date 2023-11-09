import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_detail_screen_safe_area.dart';

@RoutePage()
class JobDetailScreen extends StatelessWidget {
  final JobEntity job;
  const JobDetailScreen({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return JobDetailScreenSafeArea(job: job);
  }
}
