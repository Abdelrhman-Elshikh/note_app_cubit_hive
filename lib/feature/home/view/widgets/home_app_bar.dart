import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/widgets/custom_app_bar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Notes',
      icon: IconButton(
          alignment: Alignment.centerRight,
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: Colors.white,
          )),
    );
  }
}
