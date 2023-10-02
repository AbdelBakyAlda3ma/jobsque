import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'type_of_work_step_content_list_tile_radio.dart';
import 'type_of_work_step_content_list_tile_sub_title.dart';
import 'type_of_work_step_content_list_tile_title.dart';

class TypeOfWorkStepContentListViewListTile extends StatefulWidget {
  const TypeOfWorkStepContentListViewListTile({
    super.key,
    required this.job,
  });
  final String job;
  @override
  State<TypeOfWorkStepContentListViewListTile> createState() =>
      _TypeOfWorkStepContentListViewListTileState();
}

class _TypeOfWorkStepContentListViewListTileState
    extends State<TypeOfWorkStepContentListViewListTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary[100] : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                isSelected ? AppColors.primary[500]! : AppColors.neutral[300]!,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TypeOfWorkStepContentListTileTitle(
                  job: widget.job,
                ),
                const VerticalSpace(space: 8),
                const TypeOfWorkStepContentListTileSubTitle(),
              ],
            ),
            const Spacer(),
            TypeOfWorkStepContentListTileRadio(isSelected: isSelected)
          ],
        ),
      ),
    );
  }
}
