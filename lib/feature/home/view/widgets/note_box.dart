import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app_cubit_hive/core/utils/routers/routes.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({super.key});

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
                const Text(
                  'Title',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Flexible(
                      child: Text(
                        'description Loram Style for the title of the fiption Loram Style for the title of the fit box in the title box of the fit box ofdescription Loram Style for the title of the fit box in the title box of the fit box of',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_rounded,
                          size: 30,
                        )),
                  ],
                ),
                const Text(textAlign: TextAlign.end, 'DATE')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
