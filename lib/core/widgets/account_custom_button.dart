import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import 'horizontal_space.dart';

class AccountCustomButton extends StatelessWidget {
  final String logo;
  final String text;
  final void Function() onTap;
  const AccountCustomButton({
    super.key,
    required this.logo,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.neutral[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(logo),
              const HorizontalSpace(space: 8),
              Text(
                text,
                style: CustomTextStyles.textMMedium
                    .copyWith(color: AppColors.neutral[900]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
