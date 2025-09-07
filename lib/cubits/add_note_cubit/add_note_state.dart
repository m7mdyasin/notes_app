part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteInitial extends AddNoteCubitState {}

final class AddNoteLoading extends AddNoteCubitState {}

final class AddNoteSuccess extends AddNoteCubitState {}

final class AddNoteFailure extends AddNoteCubitState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
