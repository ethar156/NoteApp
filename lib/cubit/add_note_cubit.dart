import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubitDartCubit extends Cubit<AddNoteCubitDartState> {
  AddNoteCubitDartCubit() : super(AddNoteCubitDartInitial());
}
