import 'package:flutter/material.dart';

import '../../../../core/widgets/uploaded_file_list_tile.dart';
import '../../../../core/widgets/vertical_space.dart';

class PortfolioUploadedFilesSection extends StatelessWidget {
  const PortfolioUploadedFilesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: ((context, index) => const UploadedFileListTile()),
        separatorBuilder: ((context, index) => const VerticalSpace(space: 16)),
        itemCount: 3,
      ),
    );
  }
}
