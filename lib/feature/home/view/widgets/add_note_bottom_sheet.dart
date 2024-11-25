import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/feature/home/view/widgets/custom_button.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 24),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 40),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
