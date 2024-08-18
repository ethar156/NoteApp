part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitDartState {}

class AddNoteCubitDartInitial extends AddNoteCubitDartState {}
class AddNoteLoading extends AddNoteCubitDartState {}
class AddNoteSuccess extends AddNoteCubitDartState {}
class AddNoteFailure extends AddNoteCubitDartState {
final String errmessage;

AddNoteFailure(this.errmessage);

}