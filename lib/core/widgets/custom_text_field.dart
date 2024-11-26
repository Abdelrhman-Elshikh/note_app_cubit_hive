import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final String? initialValue;

  const CustomTextField({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Text field cannot be empty';
        } else {
          return null;
        }
      },
      style: const TextStyle(color: KPrimaryColor),
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
        hintText: hintText,
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
