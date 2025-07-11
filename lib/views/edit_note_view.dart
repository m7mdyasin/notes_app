import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: EditNoteBody(),
      ),
    );
  }
}
