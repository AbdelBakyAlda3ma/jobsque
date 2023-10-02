import 'package:flutter/material.dart';

Future<dynamic> showAppCustomBottomSheet(
  BuildContext context, {
  required Widget bottomSheetView,
  double borderRadius = 20,
}) {
  return showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    ),
    context: context,
    builder: (context) {
      return bottomSheetView;
    },
  );
}
