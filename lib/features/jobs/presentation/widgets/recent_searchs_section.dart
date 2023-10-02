import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/recent_searchs_list_view.dart';
import 'package:jobseque/features/jobs/presentation/widgets/recent_searchs_header.dart';

import '../../../../core/widgets/vertical_space.dart';

class RecentSearchsSection extends StatelessWidget {
  const RecentSearchsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 6,
      child: Column(
        children: [
          RecentSearchsHeader(),
          VerticalSpace(space: 16),
          RecentSearchsListView(),
        ],
      ),
    );
  }
}
