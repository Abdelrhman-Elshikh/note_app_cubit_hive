import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/note_box.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NoteBox();
        });
  }
}
