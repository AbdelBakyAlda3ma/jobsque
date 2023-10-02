import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';

void showSuccessSnackBar({message, context}) {
  Flushbar(
    message: message,
    icon: Icon(
      Icons.done,
      size: 28.0,
      color: AppColors.success[500],
    ),
    duration: const Duration(seconds: 3),
    leftBarIndicatorColor: Colors.green[300],
  ).show(context);
}

void showErrorSnackBar({message, context}) {
  Flushbar(
    message: message,
    icon: Icon(
      Icons.info_outline,
      size: 28.0,
      color: AppColors.danger[500],
    ),
    duration: const Duration(seconds: 3),
    leftBarIndicatorColor: Colors.redAccent,
  ).show(context);
}
