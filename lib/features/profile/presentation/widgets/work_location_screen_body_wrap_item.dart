import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';

class WorkLocationScreenBodyWrapItem extends StatefulWidget {
  const WorkLocationScreenBodyWrapItem({
    super.key,
    required this.isoCode,
    required this.countryName,
  });
  final String isoCode;
  final String countryName;

  @override
  State<WorkLocationScreenBodyWrapItem> createState() =>
      _WorkLocationScreenBodyWrapItemState();
}

class _WorkLocationScreenBodyWrapItemState
    extends State<WorkLocationScreenBodyWrapItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });

        if (isSelected) {
          BlocProvider.of<WorkPrefrencesBloc>(context)
              .preferedCountriesToWork!
              .add(widget.countryName);
        } else {
          BlocProvider.of<WorkPrefrencesBloc>(context)
              .preferedCountriesToWork!
              .remove(widget.countryName);
        }
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 8, 14, 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary[100] : AppColors.neutral[100],
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color:
                isSelected ? AppColors.primary[500]! : AppColors.neutral[200]!,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleFlag(
              widget.isoCode,
              size: 26,
            ),
            const HorizontalSpace(space: 8),
            Text(
              widget.countryName,
              style: CustomTextStyles.textLRegular
                  .copyWith(color: AppColors.neutral[900]),
            ),
          ],
        ),
      ),
    );
  }
}
