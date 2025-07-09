import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custoum_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustoumTextField(hint: 'Title'),
        CustoumTextField(hint: 'description', maxLines: 6),
      ],
    );
  }
}
