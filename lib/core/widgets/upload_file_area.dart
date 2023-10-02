import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/upload_file_area_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import '../utils/global/icons_jobeque_icons.dart';

class UploadFileArea extends StatelessWidget {
  const UploadFileArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary[100]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        color: AppColors.primary[500]!, //color of dotted/dash line
        strokeWidth: 1.5, //thickness of dash/dots
        dashPattern: const [4.5, 4.5],
        //dash patterns, 10 is dash width, 6 is space width
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
          child: SizedBox(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.primary[100],
                  child: Icon(
                    IconsJobeque.documentuploadbold,
                    size: 32,
                    color: AppColors.primary[500],
                  ),
                ),
                const VerticalSpace(space: 16),
                Text(
                  'Upload your other file',
                  style: CustomTextStyles.h5Medium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                const VerticalSpace(space: 8),
                Text(
                  'Max. file size 10 MB',
                  style: CustomTextStyles.textSRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
                const VerticalSpace(space: 24),
                const UploadFileAreaButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
