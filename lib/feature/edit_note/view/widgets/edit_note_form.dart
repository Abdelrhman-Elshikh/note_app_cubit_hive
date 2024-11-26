import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/core/utils/hive_service.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_text_field.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_app_bar.dart';

class EditNoteForm extends StatefulWidget {
  const EditNoteForm({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteForm> createState() => _EditNoteFormState();
}

class _EditNoteFormState extends State<EditNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          EditNoteAppBar(
            onPressed: () {
              widget.note.save();
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            initialValue: widget.note.title,
            onChanged: (value) {
              widget.note.title = value;
            },
          ),
          const SizedBox(height: 24),
          CustomTextField(
            initialValue: widget.note.description,
            maxLines: 5,
            onChanged: (value) {
              widget.note.description = value;
            },
          ),
        ],
      ),
    );
  }
}
