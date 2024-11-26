import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  final NoteModel note;
  const EditNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditNoteBody(note: note)),
      backgroundColor: Colors.grey[800],
    );
  }
}
