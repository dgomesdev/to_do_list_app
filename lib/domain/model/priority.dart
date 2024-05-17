enum Priority {
  low,
  medium,
  high;

  static Priority fromString(String priority) => switch (priority) {
        'LOW' => Priority.low,
        'MEDIUM' => Priority.medium,
        'HIGH' => Priority.high,
        _ => Priority.medium,
      };
}

extension StringToPriority on String {
  Priority toPriority() => switch (this) {
        'LOW' => Priority.low,
        'MEDIUM' => Priority.medium,
        'HIGH' => Priority.high,
        _ => Priority.medium,
      };
}

extension PriorityToString on Priority {
  String toEntity() => switch (this) {
        Priority.low => 'LOW',
        Priority.medium => 'MEDIUM',
        Priority.high => 'HIGH',
      };
}
