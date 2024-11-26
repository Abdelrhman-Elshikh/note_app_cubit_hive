import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_cubit_hive/feature/home/manager/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 30,
            bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          ),
          child: BlocConsumer<AddNotesCubit, AddNotesState>(
              listener: (context, state) {
            if (state is AddNotesSuccess) {
              GoRouter.of(context).pop();
            }
          }, builder: (context, state) {
            if (state is AddNotesLoading) {
              return const CircularProgressIndicator();
            } else if (state is AddNotesFailure) {
              return const Text('Failed to add note. Please try again.');
            } else {
              return const AddNoteForm();
            }
          }),
        ),
      ),
    );
  }
}
