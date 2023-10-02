import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content_uploaded_cv_tilte.dart';

class UploadPortfolioStepContentUploadedCV extends StatelessWidget {
  const UploadPortfolioStepContentUploadedCV({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UploadPortfolioStepContentUploadedCVTitle(),
        VerticalSpace(space: 12),
        UploadedFileListTile(),
      ],
    );
  }
}
