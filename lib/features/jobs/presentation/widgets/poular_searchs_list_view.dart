import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/popular_searchs_list.dart';
import 'package:jobseque/features/jobs/presentation/widgets/popular_searchs_item.dart';
import '../../../../core/widgets/vertical_space.dart';

class PopularSearchsListView extends StatelessWidget {
  const PopularSearchsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          itemBuilder: (context, index) => PopularSearchsItem(
            searchedJob: popularSearchsList[index],
          ),
          separatorBuilder: (context, index) => const VerticalSpace(space: 16),
          itemCount: 5,
        ),
      ),
    );
  }
}
