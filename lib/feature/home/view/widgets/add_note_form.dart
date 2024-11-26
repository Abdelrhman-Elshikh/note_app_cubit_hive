import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_text_field.dart';
import 'package:note_app_cubit_hive/feature/home/manager/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
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
          const SizedBox(height: 40),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<AddNotesCubit>(context).addNote(NoteModel(
                  title: title!,
                  description: description!,
                  date: DateTime.now().toString(),
                ));
                formKey.currentState!.reset();
              } else {
                _autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
