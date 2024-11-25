import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
        hintText: 'Enter your text',
        hintStyle: const TextStyle(color: KPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: color ?? Colors.white,
      width: 2.0,
    ),
  );
}
