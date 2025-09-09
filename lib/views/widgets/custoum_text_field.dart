import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustoumTextField extends StatelessWidget {
  const CustoumTextField({
    super.key,
    this.onSaved,
    required this.hint,
    this.maxLines = 1,
    this.onChanged,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 30, left: 20),
      child: TextFormField(
        onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'this field is required';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBorder(Color(0xFF3a0ca3)),
          enabledBorder: buildBorder(kPrimaryColor),
          focusedBorder: buildBorder(Color(0xFF3a0ca3)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
