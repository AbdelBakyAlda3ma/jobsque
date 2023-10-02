import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../domain/entities/job_entity.dart';
import 'content_company_about_company.dart';
import 'content_company_contact_us.dart';

class ContentCompany extends StatelessWidget {
  final JobEntity job;
  const ContentCompany({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContentCompanyContactUs(
            job: job,
          ),
          const VerticalSpace(space: 24),
          ContentCompanyAboutCompany(
            job: job,
          ),
        ],
      ),
    );
  }
}
