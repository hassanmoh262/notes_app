import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors.listview.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextField(
            hint: "title",
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),
          CustomTextField(
            hint: "title",
            maxLines: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 30),
          ColorListview(),
          SizedBox(height: 30),

          BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButton(
                isLoasing: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var currentDateFormatted = DateFormat.yMd().format(
                      currentDate,
                    );
                    var notModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: currentDateFormatted,
                      color: Colors.blue.hashCode,
                    );
                    BlocProvider.of<AddNoteCubitCubit>(
                      context,
                    ).addNote(notModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
