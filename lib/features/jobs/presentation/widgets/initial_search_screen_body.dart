import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/popular_searchs_section.dart';
import 'package:jobseque/features/jobs/presentation/widgets/recent_searchs_section.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          RecentSearchsSection(),
          VerticalSpace(space: 16),
          PopularSearchsSection(),
          VerticalSpace(space: 90)
        ],
      ),
    );
  }
}
