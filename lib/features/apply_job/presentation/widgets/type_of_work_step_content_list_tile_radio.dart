import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';

class TypeOfWorkStepContentListTileRadio extends StatelessWidget {
  const TypeOfWorkStepContentListTileRadio({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    /// this container to adjust the padding
    /// because the radio surrounded by a sized box with width and hieght = 24px
    return Container(
      alignment: Alignment.center,
      width: 24,
      height: 24,

      /// the outer circle
      child: Container(
        alignment: Alignment.center,
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(
            color:
                isSelected ? AppColors.primary[500]! : AppColors.neutral[400]!,
          ),
        ),

        /// the inner solid circle
        /// appear if the list tile isSelected
        child: isSelected
            ? Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: AppColors.primary[500],
                  borderRadius: BorderRadius.circular(6),
                ),
              )
            : null,
      ),
    );
  }
}
