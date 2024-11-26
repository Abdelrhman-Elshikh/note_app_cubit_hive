import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/core/utils/routers/routes.dart';
import 'package:note_app_cubit_hive/feature/home/manager/notes_cubit/notes_cubit.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the note details page
        GoRouter.of(context).push(KEditNote);
      },
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.grey),
        ),
        margin: const EdgeInsets.only(bottom: 18.0),
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  note.title,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        note.description,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                        onPressed: () {
                          note.delete();
                          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                        },
                        icon: const Icon(
                          Icons.delete_rounded,
                          size: 30,
                        )),
                  ],
                ),
                Text(
                  textAlign: TextAlign.end,
                  note.date,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
