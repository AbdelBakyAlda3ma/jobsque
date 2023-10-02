import 'package:flutter/material.dart';

import 'custom_date_picker_icon.dart';
import 'custom_text_form_field.dart';

class TextFormFieldOfDate extends StatefulWidget {
  final String? hintText;
  const TextFormFieldOfDate({
    super.key,
    this.hintText,
  });

  @override
  State<TextFormFieldOfDate> createState() => _TextFormFieldOfDateState();
}

class _TextFormFieldOfDateState extends State<TextFormFieldOfDate> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: textEditingController,
      hintText: widget.hintText,
      focusNode: FocusNode(),
      suffixIcon: CustomDatePickerIcon(
        onTapped: ((year, month) {
          setState(() {
            textEditingController.text = '$month $year';
          });
        }),
      ),
    );
  }
}
