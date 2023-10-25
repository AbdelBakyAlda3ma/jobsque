import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content_uploaded_cv_tilte.dart';

class UploadPortfolioStepContentUploadedCV extends StatelessWidget {
  const UploadPortfolioStepContentUploadedCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UploadPortfolioStepContentUploadedCvHeader(),
        const VerticalSpace(space: 12),
        UploadedFileListTile(
          cvTitle: JobsqueSharedPrefrences.getString(kUserName),
        ),
      ],
    );
  }
}
