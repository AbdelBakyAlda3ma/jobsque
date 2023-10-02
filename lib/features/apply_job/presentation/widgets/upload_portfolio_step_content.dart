import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content_header.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content_upload_other_file.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content_uploaded_cv.dart';

class UploadPortfolioStepContent extends StatelessWidget {
  const UploadPortfolioStepContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UploadPortfolioStepContentHeader(),
              VerticalSpace(space: 28),
              UploadPortfolioStepContentUploadedCV(),
              VerticalSpace(space: 20),
              UploadPortfolioStepContentUploadOtherFile(),
            ],
          ),
        ),
      ],
    );
  }
}
