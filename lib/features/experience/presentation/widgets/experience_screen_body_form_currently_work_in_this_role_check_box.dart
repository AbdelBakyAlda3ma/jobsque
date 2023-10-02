import 'package:flutter/material.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/horizontal_space.dart';

class ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox
    extends StatefulWidget {
  const ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox({
    super.key,
  });

  @override
  State<ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox>
      createState() =>
          _ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBoxState();
}

class _ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBoxState
    extends State<ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                child: isChecked
                    ? Icon(
                        IconsJobeque.boxchecked,
                        size: 24,
                        color: AppColors.primary[500],
                      )
                    : Icon(
                        IconsJobeque.boxunchecked,
                        size: 24,
                        color: AppColors.neutral[400],
                      ),
              ),
              const HorizontalSpace(space: 8),
              Text(
                'I am currently working in this role',
                style: CustomTextStyles.textMMedium
                    .copyWith(color: AppColors.neutral[900]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
