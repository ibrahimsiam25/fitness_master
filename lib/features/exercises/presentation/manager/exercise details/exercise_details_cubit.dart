import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'exercise_details_state.dart';

class ExerciseDetailsCubit extends Cubit<ExerciseDetailsState> {
  ExerciseDetailsCubit() : super(ExerciseDetailsInitial());
}
