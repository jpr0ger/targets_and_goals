import 'package:equatable/equatable.dart';
import 'package:targets_and_goals/domain/models/solution.dart';

import 'goal_type.dart';

class Goal extends Equatable {
  final String id;
  final String title;
  final String description;
  final GoalType type;
  final List<Solution> goalsActions;

  const Goal({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.goalsActions,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        type,
        goalsActions,
      ];

  int get readinessInPercents {
    final int readiness = goalsActions.fold(0, (previousValue, element) {
      if (element.completed) {
        return previousValue + element.impact;
      } else {
        return previousValue;
      }
    });
    return readiness > 100 ? 100 : readiness;
  }

  bool get completed => (readinessInPercents >= 100);

  Goal copyWith({
    String? id,
    String? title,
    String? description,
    GoalType? type,
    List<Solution>? goalsActions,
  }) {
    return Goal(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      goalsActions: goalsActions ?? this.goalsActions,
    );
  }
}
