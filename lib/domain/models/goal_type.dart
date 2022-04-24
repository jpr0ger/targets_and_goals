import 'package:equatable/equatable.dart';

abstract class GoalType extends Equatable {
  final String description;

  const GoalType(this.description);
}

class PeriodicGoalType extends GoalType {
  const PeriodicGoalType(String description) : super(description);

  @override
  List<Object?> get props => [description];
}

class FiniteGoalType extends GoalType {
  const FiniteGoalType(String description) : super(description);

  @override
  List<Object?> get props => [description];
}
