import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          CustomTextField(hint: "title"),
          SizedBox(height: 10),
          CustomTextField(hint: "title", maxLines: 5),
        ],
      ),
    );
  }
}
