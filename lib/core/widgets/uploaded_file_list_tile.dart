import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_actions.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_leading_icon.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_sub_title.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_title.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';
import '../utils/global/app_colors.dart';

class UploadedFileListTile extends StatelessWidget {
  final PortfolioEntity portfolio;

  const UploadedFileListTile({
    super.key,
    required this.portfolio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.neutral[300]!,
        ),
      ),
      child: Row(
        children: [
          const UploadPortfolioListTileLeadingIcon(),
          const HorizontalSpace(space: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UploadPortfolioListTileTitle(
                    name: portfolio.cvFile!.split('_').first),
                const VerticalSpace(space: 4),
                const UploadPortfolioListTileSubTitle(),
              ],
            ),
          ),
          UploadPortfolioListTileActins(portfolio: portfolio),
        ],
      ),
    );
  }
}
