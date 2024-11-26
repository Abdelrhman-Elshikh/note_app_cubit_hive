part of 'notes_cubit.dart';

@immutable
sealed class NotesState extends Equatable {
  const NotesState();
  @override
  List<Object> get props => [];
}

final class NotesInitial extends NotesState {}

final class NotesFailure extends NotesState {
  final String errorMessage;

  const NotesFailure(this.errorMessage);
}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  const NotesSuccess(this.notes);

  @override
  List<Object> get props => [notes];
}

final class NotesLoading extends NotesState {}
