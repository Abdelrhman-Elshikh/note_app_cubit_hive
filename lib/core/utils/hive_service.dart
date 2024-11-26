import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_cubit_hive/core/model/note_model.dart';
import 'package:note_app_cubit_hive/core/utils/constants.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  HiveService();

  intiHiveService() async {
    final dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
    Hive.registerAdapter(NoteModelAdapter());
    // Hive.openBox<NoteModel>(KNoteBox);
    await Hive.openBox<NoteModel>(KNoteBox);
  }
}
