import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/custom_switch.dart';

class NotificationsProfileItem extends StatefulWidget {
  final String text;
  const NotificationsProfileItem({
    super.key,
    required this.text,
  });

  @override
  State<NotificationsProfileItem> createState() =>
      _NotificationsProfileItemState();
}

class _NotificationsProfileItemState extends State<NotificationsProfileItem> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: CustomTextStyles.textLRegular.copyWith(
                  color: AppColors.neutral[900],
                ),
              ),
              CustomSwitch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              )
            ],
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
          color: AppColors.neutral[200],
        ),
      ],
    );
  }
}
