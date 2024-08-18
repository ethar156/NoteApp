import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubitDartCubit extends Cubit<AddNoteCubitDartState> {
  AddNoteCubitDartCubit() : super(AddNoteCubitDartInitial());
}
