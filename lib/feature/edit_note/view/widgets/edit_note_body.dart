import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_text_field.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_app_bar.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_form.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: EditNoteForm(note: note),
    );
  }
}
