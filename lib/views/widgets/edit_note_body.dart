import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custoum_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.content = content ?? widget.note.content;
            widget.note.save();
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('note edited successfully')),
            );
          },
        ),
        CustoumTextField(
          hint: widget.note.title,
          onChanged: (value) {
            title = value;
          },
        ),
        CustoumTextField(
          hint: widget.note.content,
          maxLines: 6,
          onChanged: (value) {
            content = value;
          },
        ),
      ],
    );
  }
}
