import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_text_field.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_app_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          EditNoteAppBar(),
          SizedBox(height: 16),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 24),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
