import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustoumTextField()]);
  }
}

class CustoumTextField extends StatelessWidget {
  const CustoumTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 30, left: 20),
      child: TextField(
        cursorColor: Color(0xFFe0c3fc),
        decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(color: Color(0xFFe0c3fc)),
          border: buildBorder(Color(0xFF3a0ca3)),
          enabledBorder: buildBorder(Color(0xFFe0c3fc)),
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
