import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';

class PortfolioUploadedFilesSectionListView extends StatelessWidget {
  final List<PortfolioEntity> portfoliosList;

  const PortfolioUploadedFilesSectionListView({
    super.key,
    required this.portfoliosList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: ((context, index) => UploadedFileListTile(
            portfolio: portfoliosList[index],
          )),
      separatorBuilder: ((context, index) => const VerticalSpace(space: 16)),
      itemCount: portfoliosList.length,
    );
  }
}
