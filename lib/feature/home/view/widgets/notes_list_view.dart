import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/note_box.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.notes});

  final List<NoteModel> notes;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteBox(note: notes[index]);
        });
  }
}
