import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../widgets/job_datail_body.dart';
import '../widgets/job_detail_app_bar.dart';

class JobDetailScreen extends StatelessWidget {
  final JobEntity job;
  const JobDetailScreen({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: JobDetailAppBar(job: job),
        body: JobDetailBody(job: job),
      ),
    );
  }
}
