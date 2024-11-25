import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_cubit_hive/feature/home/model/note_model.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  HiveService();

  final fileBox = Hive.box('dataBox');

  intiHiveService() async {
    final dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
  }

  void addData(NoteModel note) {
    fileBox.add(note);
  }

  // List<NoteModel> getAllNotes() {
  //   // return fileBox.get(key);
  // }
}
