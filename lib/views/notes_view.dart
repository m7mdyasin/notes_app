import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/custom_floating_action_buttoun.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        floatingActionButton: CustomFloatingActionButtoun(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // showModalBottomSheet(
              //   isScrollControlled: true,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(24),
              //   ),
              //   context: context,
              //   builder: (_) {
              //     return MultiBlocProvider(
              //       providers: [
              //         BlocProvider.value(
              //           value: BlocProvider.of<NotesCubit>(context),
              //         ),
              //         BlocProvider(create: (_) => AddNoteCubit()),
              //       ],
              //       child: const AddNoteBottomSheet(),
              //     );
              //   },
              // );

              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                },
              );
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(Icons.add, color: Color(0xFF3a0ca3), size: 32),
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
