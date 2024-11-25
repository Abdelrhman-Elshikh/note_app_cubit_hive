import 'package:flutter/material.dart';
import 'package:note_app_cubit_hive/core/utils/hive_service.dart';
import 'package:note_app_cubit_hive/core/utils/routers/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService().intiHiveService();
  // runApp(DevicePreview(builder: (context) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
