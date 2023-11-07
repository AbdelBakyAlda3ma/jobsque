import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import '../../../../core/utils/global/app_logos.dart';
import 'chatting_show_bottom_sheet_button.dart';

class ChattingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChattingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Icon(
          IconsJobeque.arrowleft,
        ),
      ),
      title: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(AppLogos.danaLogoPng),
          ),
          const HorizontalSpace(space: 20),
          Text(
            'Twitter',
            style: CustomTextStyles.h4Medium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
        ],
      ),
      actions: const [
        ChattingShowBottomSheetButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
