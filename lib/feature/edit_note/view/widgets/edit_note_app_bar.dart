import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_app_bar.dart';

class EditNoteAppBar extends StatelessWidget {
  const EditNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Edit Note',
      icon: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    );
  }
}
