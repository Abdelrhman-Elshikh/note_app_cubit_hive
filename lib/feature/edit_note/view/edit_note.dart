import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: EditNoteBody()),
      backgroundColor: Colors.grey[800],
    );
  }
}
