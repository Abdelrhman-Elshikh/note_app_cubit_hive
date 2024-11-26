import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_app_bar.dart';

class EditNoteAppBar extends StatelessWidget {
  const EditNoteAppBar({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Edit Note',
      icon: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    );
  }
}
