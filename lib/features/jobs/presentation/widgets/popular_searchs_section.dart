import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/popular_searchs_header.dart';
import 'package:jobseque/features/jobs/presentation/widgets/poular_searchs_list_view.dart';

import '../../../../core/widgets/vertical_space.dart';

class PopularSearchsSection extends StatelessWidget {
  const PopularSearchsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 5,
      child: Column(
        children: [
          PopularSearchsHeader(),
          VerticalSpace(space: 16),
          PopularSearchsListView(),
        ],
      ),
    );
  }
}
