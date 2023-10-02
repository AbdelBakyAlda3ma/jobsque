import 'package:flutter/material.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/horizontal_space.dart';

class LoginScreenBodyFormRememberMeAndForgotPassword extends StatefulWidget {
  const LoginScreenBodyFormRememberMeAndForgotPassword({
    super.key,
  });

  @override
  State<LoginScreenBodyFormRememberMeAndForgotPassword> createState() =>
      _LoginScreenBodyFormRememberMeAndForgotPasswordState();
}

class _LoginScreenBodyFormRememberMeAndForgotPasswordState
    extends State<LoginScreenBodyFormRememberMeAndForgotPassword> {
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
                        size: 16,
                        color: AppColors.primary[500],
                      )
                    : Icon(
                        IconsJobeque.boxunchecked,
                        size: 16,
                        color: AppColors.neutral[400],
                      ),
              ),
              const HorizontalSpace(space: 6),
              const Text('Remember me')
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot Password?',
              style: CustomTextStyles.textMMedium
                  .copyWith(color: AppColors.primary[500]),
            ),
          ),
        ],
      ),
    );
  }
}
