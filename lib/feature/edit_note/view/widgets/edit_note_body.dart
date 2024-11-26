import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_text_field.dart';
import 'package:note_app_cubit_hive/feature/edit_note/view/widgets/edit_note_app_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: EditNoteForm(),
    );
  }
}

class EditNoteForm extends StatefulWidget {
  const EditNoteForm({
    super.key,
  });

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
          const EditNoteAppBar(),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 24),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              description = value;
            },
          ),
        ],
      ),
    );
  }
}
