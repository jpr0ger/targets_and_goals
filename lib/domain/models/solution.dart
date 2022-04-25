import 'package:equatable/equatable.dart';

class Solution extends Equatable {
  final String id;
  final String title;
  final String iconPath;
  final String description;
  final int impact;
  final bool completed;

  const Solution({
    required this.id,
    required this.title,
    required this.iconPath,
    required this.description,
    required this.impact,
    required this.completed,
  });

  @override
  List<Object> get props => [
        id,
        title,
        iconPath,
        description,
        impact,
        completed,
      ];

  Solution copyWith({
    String? id,
    String? title,
    String? iconPath,
    String? description,
    int? impact,
    bool? completed,
  }) {
    return Solution(
      id: id ?? this.id,
      title: title ?? this.title,
      iconPath: iconPath ?? this.iconPath,
      description: description ?? this.description,
      impact: impact ?? this.impact,
      completed: completed ?? this.completed,
    );
  }
}
