import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_actions.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_leading_icon.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_sub_title.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile_title.dart';

import '../utils/global/app_colors.dart';

class UploadedFileListTile extends StatelessWidget {
  const UploadedFileListTile({super.key});

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
      child: const Row(
        children: [
          UploadPortfolioListTileLeadingIcon(),
          HorizontalSpace(space: 8),
          Column(
            children: [
              UploadPortfolioListTileTitle(),
              VerticalSpace(space: 4),
              UploadPortfolioListTileSubTitle(),
            ],
          ),
          Spacer(),
          UploadPortfolioListTileActins(),
        ],
      ),
    );
  }
}
