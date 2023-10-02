import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/icons_jobeque_icons.dart';

class CustomDatePickerIcon extends StatelessWidget {
  const CustomDatePickerIcon({
    super.key,
    required this.onTapped,
  });
  final OnTapped onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showMonthPicker(
          context: context,
          firstDate: DateTime(DateTime.now().year - 5, 5),
          lastDate: DateTime(DateTime.now().year + 8, 9),
          initialDate: DateTime(DateTime.now().year, DateTime.now().month),
          //show only even months

          yearStylePredicate: (int val) {
            if (val == DateTime.now().year) {
              return TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                textStyle: TextStyle(
                  color: AppColors.primary[500],
                  fontWeight: FontWeight.bold,
                ),
              );
            }
            return null;
          },
          monthStylePredicate: (DateTime val) {
            if (val.month == DateTime.now().month) {
              return TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                textStyle: TextStyle(
                  color: AppColors.neutral[400],
                  fontWeight: FontWeight.bold,
                ),
              );
            }
            return null;
          },
          headerColor: AppColors.primary[500],
          headerTextColor: Colors.white,

          selectedMonthBackgroundColor: AppColors.primary[100],
          selectedMonthTextColor: AppColors.primary[500],
          unselectedMonthTextColor: AppColors.neutral[400],
          confirmWidget: Text(
            'This one!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.neutral[500],
            ),
          ),
          cancelWidget: Text(
            'Cancel',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.neutral[500],
            ),
          ),
          roundedCornersRadius: 20,
          yearFirst: true,
          backgroundColor: Colors.white,
        ).then((DateTime? date) {
          if (date != null) {
            String formattedMonthDate = DateFormat.MMMM().format(date);
            onTapped(date.year, formattedMonthDate);
          }
        });
      },
      child: Icon(
        IconsJobeque.calendar,
        size: 24,
        color: AppColors.neutral[900],
      ),
    );
  }
}

typedef OnTapped = void Function(int year, String month);
