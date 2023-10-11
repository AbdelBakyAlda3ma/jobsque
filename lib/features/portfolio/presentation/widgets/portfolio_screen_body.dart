import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_upload_section.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_uploaded_files_section.dart';

class PortfolioScreenBody extends StatelessWidget {
  const PortfolioScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          PortfolioUploadSection(),
          VerticalSpace(space: 24),
          PortfolioUploadedFilesSection()
        ],
      ),
    );
  }
}
