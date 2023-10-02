import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';

import '../../domain/entities/job_entity.dart';

class SearchedJobsSectionHeader extends StatelessWidget {
  final List<JobEntity> jobsList;
  const SearchedJobsSectionHeader({
    super.key,
    required this.jobsList,
  });

  @override
  Widget build(BuildContext context) {
    return jobsList.length > 1
        ? CustomHeader(headerTitle: 'Featuring ${jobsList.length} jobs')
        : const CustomHeader(headerTitle: 'Featuring a job');
  }
}
