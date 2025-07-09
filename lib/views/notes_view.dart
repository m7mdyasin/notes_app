import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_floating_action_buttoun.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButtoun(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Icon(Icons.add, color: Color(0xFF3a0ca3), size: 32),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
