import 'package:equatable/equatable.dart';

class Action extends Equatable {
  final String id;
  final String title;
  final String description;
  final int impact;
  final bool completed;

  const Action({
    required this.id,
    required this.title,
    required this.description,
    required this.impact,
    required this.completed,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        impact,
        completed,
      ];
}
