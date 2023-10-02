import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;

  const BulletList(this.strings, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: strings.map((str) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\u2022',
              style: CustomTextStyles.textSRegular.copyWith(
                color: AppColors.neutral[600],
                letterSpacing: 0.01,
              ),
            ),
            const HorizontalSpace(space: 5),
            Expanded(
              child: Text(
                str,
                textAlign: TextAlign.left,
                softWrap: true,
                style: CustomTextStyles.textSRegular.copyWith(
                  color: AppColors.neutral[600],
                  letterSpacing: 0.01,
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
