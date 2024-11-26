import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import 'package:note_app_cubit_hive/core/model/note_model.dart';

import '../../../../core/utils/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(KNoteBox);
      var notes = noteBox.values.toList();
      emit(NotesSuccess(notes));

      noteBox.watch().listen((event) {
        var notes = noteBox.values.toList();
        emit(NotesSuccess(notes));
      });
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
