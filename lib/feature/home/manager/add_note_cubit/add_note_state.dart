part of 'add_note_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNotesLoading extends AddNotesState {}

final class AddNotesFailure extends AddNotesState {
  final String errorMessage;

  AddNotesFailure(this.errorMessage);
}

final class AddNotesSuccess extends AddNotesState {}
