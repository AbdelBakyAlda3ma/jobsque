import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class UploadFileAreaButton extends StatelessWidget {
  final void Function() onPressed;
  const UploadFileAreaButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1000),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 11),
            backgroundColor: AppColors.primary[100],
            elevation: 0,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                IconsJobeque.exportIcon,
                size: 20,
                color: AppColors.primary[500],
              ),
              const HorizontalSpace(space: 10),
              Text(
                'Add file',
                style: CustomTextStyles.textMMedium.copyWith(
                  color: AppColors.primary[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
