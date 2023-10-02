import 'package:flutter/material.dart';

import 'home_suggested_job_category_item.dart';

class HomeSuggestedJobSectionListViewItemCategory extends StatelessWidget {
  const HomeSuggestedJobSectionListViewItemCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeSuggestdJobCategoryItem(
            category: 'Fulltime',
          ),
          HomeSuggestdJobCategoryItem(
            category: 'Fulltime',
          ),
          HomeSuggestdJobCategoryItem(
            category: 'Fulltime',
          ),
        ],
      ),
    );
  }
}
