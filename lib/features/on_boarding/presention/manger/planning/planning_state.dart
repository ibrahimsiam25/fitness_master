part of 'planning_cubit.dart';

@immutable
sealed class PlanningState {}


final class PlanningInitial extends PlanningState {}
final class PlanningGoal extends PlanningState {
 final int index;

  PlanningGoal({required this.index});
}
