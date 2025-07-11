import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custoum_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Edit Note', icon: Icons.check),
        CustoumTextField(hint: 'Title'),
        CustoumTextField(hint: 'description', maxLines: 6),
      ],
    );
  }
}
