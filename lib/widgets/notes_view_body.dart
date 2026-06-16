import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_app_bar.dart';
import 'package:notes_app/widgets/Notes_list_view.dart';
import 'package:notes_app/widgets/notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
