part of 'goals_cubit.dart';

abstract class GoalsState extends Equatable {
  const GoalsState();
}

class GoalsInitial extends GoalsState {
  @override
  List<Object> get props => [];
}

class GoalsLoading extends GoalsState {
  @override
  List<Object> get props => [];
}

class GoalsLoaded extends GoalsState {
  final List<Goal> goals;

  const GoalsLoaded(this.goals);

  @override
  List<Object> get props => [goals];
}

class GoalsError extends GoalsState {
  final String message;

  const GoalsError(this.message);

  @override
  List<Object> get props => [message];
}
