import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/feature/home/manager/notes_cubit/notes_cubit.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/home_app_bar.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/notes_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(height: 16.0),
              ],
            ),
          ),
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              if (state is NotesSuccess) {
                List<NoteModel> notes = state.notes;
                return NotesListView(notes: notes);
              } else if (state is NotesLoading) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      state is NotesFailure
                          ? state.errorMessage.toString()
                          : 'No Notes yet',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
