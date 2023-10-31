import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_datail_body.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_detail_app_bar.dart';

class JobDetailScreenScaffold extends StatelessWidget {
  const JobDetailScreenScaffold({
    super.key,
    required this.job,
  });

  final JobEntity job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JobDetailAppBar(job: job),
      body: JobDetailBody(job: job),
    );
  }
}
