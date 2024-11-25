import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_cubit_hive/feature/home/manager/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/home_app_bar.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/notes_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: BlocBuilder<AddNotesCubit, AddNotesState>(
        builder: (context, state) {
          if (state is AddNotesInitial) {
            return const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      HomeAppBar(),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
                NotesListView()
              ],
            );
          } else {
            return const Text("No notes found");
          }
        },
      ),
    );
  }
}
