import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/search_filter_data.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class FilterSearchSectionListViewItem extends StatefulWidget {
  final FilteredSearchItemModel filter;

  const FilterSearchSectionListViewItem({super.key, required this.filter});

  @override
  State<FilterSearchSectionListViewItem> createState() =>
      _FilterSearchSectionListViewItemState();
}

class _FilterSearchSectionListViewItemState
    extends State<FilterSearchSectionListViewItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.filter.isSelected = !widget.filter.isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(

            /// change the background color if selected
            color: widget.filter.isSelected
                ? AppColors.primary[900]
                : Colors.transparent,
            borderRadius: BorderRadius.circular(100),

            /// changing the border if selected
            border: widget.filter.isSelected
                ? Border.all(style: BorderStyle.none)
                : Border.all(
                    color: AppColors.neutral[300]!,
                  )),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        alignment: Alignment.center,
        child: Row(
          children: [
            Text(
              widget.filter.filteredTopic,
              style: CustomTextStyles.textSMedium.copyWith(
                /// changing the text color if selected
                color: widget.filter.isSelected
                    ? Colors.white
                    : AppColors.neutral[500],
              ),
            ),
            const HorizontalSpace(space: 4),
            Icon(
              IconsJobeque.arrowdownoutline,

              /// changing the icon color if selected
              color: widget.filter.isSelected
                  ? Colors.white
                  : AppColors.neutral[500],
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
