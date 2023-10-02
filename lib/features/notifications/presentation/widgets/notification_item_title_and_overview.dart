import 'package:flutter/cupertino.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class NotificationItemTitleAndOverview extends StatelessWidget {
  final String name;
  final String overView;
  const NotificationItemTitleAndOverview({
    super.key,
    required this.name,
    required this.overView,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // notification title
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.textLMedium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 4),
          // notification overview
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Text(
                    overView,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.textSRegular.copyWith(
                      color: AppColors.neutral[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
