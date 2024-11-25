import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'data ',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
        Expanded(
            child: IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: const Icon(Icons.search_outlined)))
      ],
    );
  }
}
