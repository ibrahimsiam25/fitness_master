import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'planning_state.dart';

class PlanningCubit extends Cubit<PlanningState> {
  PlanningCubit() : super(PlanningInitial());
}
