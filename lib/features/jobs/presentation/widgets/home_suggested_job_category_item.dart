import 'package:flutter/material.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class HomeSuggestdJobCategoryItem extends StatelessWidget {
  final String category;
  const HomeSuggestdJobCategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 86,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.14),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        category,
        style: CustomTextStyles.textSRegular.copyWith(color: Colors.white),
      ),
    );
  }
}
