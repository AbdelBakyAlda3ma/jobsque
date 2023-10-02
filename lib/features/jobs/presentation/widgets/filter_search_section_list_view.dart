import 'package:flutter/material.dart';

import '../../../../core/dummy/search_filter_data.dart';
import '../../../../core/widgets/horizontal_space.dart';
import 'filter_search_section_list_view_item.dart';

class FilterSearchSectionListView extends StatelessWidget {
  const FilterSearchSectionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 35,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => FilterSearchSectionListViewItem(
                filter: searchFilterData[index],
              )),
          separatorBuilder: ((context, index) =>
              const HorizontalSpace(space: 8)),
          itemCount: searchFilterData.length,
        ),
      ),
    );
  }
}
