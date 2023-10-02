import 'package:flutter/cupertino.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/icons_jobeque_icons.dart';

class UploadPortfolioListTileLeadingIcon extends StatelessWidget {
  const UploadPortfolioListTileLeadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      IconsJobeque.pdf,
      size: 40,
      color: AppColors.danger[600],
    );
  }
}
