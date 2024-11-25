import 'package:flutter/material.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.grey),
      ),
      margin: const EdgeInsets.only(bottom: 18.0),
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Title',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    child: Text(
                      'description Style for the title of the fit box in the title box of the fit box ofdescription Loram Style for the title of the fit box in the title box of the fit box ofdescription Loram Style for the title of the fit box in the title box of the fit box ofdescription Loram Style for the title of the fit box in the title box of the fit box ofdescription Loram Style for the title of the fit box in the title box of the fit box of',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete_rounded)),
                ],
              ),
              const Text(textAlign: TextAlign.end, 'DATE')
            ],
          ),
        ),
      ),
    );
  }
}
