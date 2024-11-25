import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/add_note_bottom_sheet.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.grey[800],
              context: context,
              builder: (context) => const AddNoteBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(child: HomeViewBody()),
      backgroundColor: Colors.grey[800],
    );
  }
}
