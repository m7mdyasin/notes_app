import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show ScaffoldMessenger, SnackBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesSuccess) {
          final notes = state.notes;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  return Dismissible(
                    key: ValueKey(note.key),
                    direction: DismissDirection.horizontal,
                    onDismissed: (direction) {
                      if (direction == DismissDirection.endToStart) {
                        note.delete();
                        context.read<NotesCubit>().fetchAllNotes();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('note deleted')),
                        );
                      } else if (direction == DismissDirection.startToEnd) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('note archived')),
                        );
                      }
                    },
                    background: Container(
                      color: CupertinoColors.activeGreen,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(
                        CupertinoIcons.archivebox,
                        color: CupertinoColors.white,
                      ),
                    ),
                    secondaryBackground: Container(
                      color: CupertinoColors.systemRed,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(
                        CupertinoIcons.delete,
                        color: CupertinoColors.white,
                      ),
                    ),
                    child: NoteCard(note: note),
                  );
                },
              ),
            ),
          );
        } else {
          return const Expanded(child: Center(child: Text("No notes yet")));
        }
      },
    );
  }
}





// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
// import 'package:notes_app/views/widgets/note_card.dart';

// class NotesListView extends StatelessWidget {
//   const NotesListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NotesCubit, NotesState>(
//       builder: (context, state) {
//         if (state is NotesSuccess) {
//           final notes = state.notes;
//           return Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15),
//               child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 itemCount: notes.length,
//                 itemBuilder: (context, index) {
//                   return NoteCard(note: notes[index]);
//                 },
//               ),
//             ),
//           );
//         } else {
//           return const Expanded(child: Center(child: Text("No notes yet")));
//         }
//       },
//     );
//   }
// }

