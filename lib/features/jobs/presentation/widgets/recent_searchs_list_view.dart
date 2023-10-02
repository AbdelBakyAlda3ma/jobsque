import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/recent_searchs_list.dart';
import 'package:jobseque/features/jobs/presentation/widgets/recent_searchs_item.dart';
import '../../../../core/widgets/vertical_space.dart';

class RecentSearchsListView extends StatelessWidget {
  const RecentSearchsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          itemBuilder: (context, index) => RecentSearchsItem(
            searchedJob: recentSearchsList[index],
          ),
          separatorBuilder: (context, index) => const VerticalSpace(space: 16),
          itemCount: 6,
        ),
      ),
    );
  }
}
