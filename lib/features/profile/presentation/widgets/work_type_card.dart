import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';
import 'package:jobseque/models/work_type_model.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class WorkTypeCard extends StatefulWidget {
  final WorkTypeModel workTypeModel;
  const WorkTypeCard({
    super.key,
    required this.workTypeModel,
  });

  @override
  State<WorkTypeCard> createState() => _WorkTypeCardState();
}

class _WorkTypeCardState extends State<WorkTypeCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
          if (isSelected) {
            BlocProvider.of<WorkPrefrencesBloc>(context)
                .interestedWork!
                .add(widget.workTypeModel.work);
          } else {
            BlocProvider.of<WorkPrefrencesBloc>(context)
                .interestedWork!
                .remove(widget.workTypeModel.work);
          }
        },

        /// the parent container with border radius
        child: Container(
          // alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.fromLTRB(14, 20, 5, 20),
          decoration: BoxDecoration(
            /// changing the background color of the parent container if slected
            color: isSelected ? AppColors.primary[100] : AppColors.neutral[100],
            border: Border.all(

                /// changing color and width  of the border of the parent container if slected
                width: isSelected ? 2 : 1,
                color: isSelected
                    ? AppColors.primary[500]!
                    : AppColors.neutral[300]!),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// the child circular container with an icon
              Container(
                padding: const EdgeInsets.all(12),
                width: 48,
                decoration: BoxDecoration(
                  /// changing the background color of child container if selected
                  color: isSelected ? Colors.white : AppColors.neutral[100],
                  shape: BoxShape.circle,
                  border: Border.all(

                      /// changing color of the border of the child container if slected
                      color: isSelected
                          ? AppColors.primary[500]!
                          : AppColors.neutral[300]!),
                ),
                child: isSelected

                    /// selected icon
                    ? Icon(
                        widget.workTypeModel.selectedIcon,
                        color: AppColors.primary[500],
                      )

                    /// unselected icon
                    : Icon(
                        widget.workTypeModel.unselectedIcon,
                      ),
              ),
              const VerticalSpace(space: 16),
              Text(
                widget.workTypeModel.work,
                style: CustomTextStyles.textLRegular
                    .copyWith(color: AppColors.neutral[900]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
