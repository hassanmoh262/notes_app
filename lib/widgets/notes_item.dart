import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  NotesItem({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: notes);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Text(
                notes.subtitle,
                style: TextStyle(color: Colors.black.withValues(alpha: .5)),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: Icon(Icons.delete),
                color: Colors.black,
              ),
            ),

            Text(notes.date, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
