import 'package:targets_and_goals/domain/models/goal.dart';

abstract class GoalsRepository {
  Future<List<Goal>> getGoals();
}
