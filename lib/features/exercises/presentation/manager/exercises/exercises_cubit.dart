import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'exercises_state.dart';

class ExercisesCubit extends Cubit<int> {
  ExercisesCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
