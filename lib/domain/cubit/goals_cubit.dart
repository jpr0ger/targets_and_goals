import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:targets_and_goals/domain/models/goal.dart';
import 'package:targets_and_goals/domain/repository.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  final GoalsRepository goalsRepository;

  GoalsCubit(this.goalsRepository) : super(GoalsInitial());

  void loadGoals() async {
    if (state is GoalsLoading) return;

    emit(GoalsLoading());
    final goals = await goalsRepository.getGoals();
    emit(GoalsLoaded(goals));
  }
}
