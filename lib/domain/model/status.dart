enum Status {
  toBeDone,
  inProgress,
  done;
}

extension StringToStatus on String {
  Status toStatus() => switch (this) {
        'TO_BE_DONE' => Status.toBeDone,
        'IN_PROGRESS' => Status.inProgress,
        'DONE' => Status.done,
        _ => Status.toBeDone,
      };
}

extension StatusToString on Status {
  String toEntity() => switch (this) {
        Status.toBeDone => 'TO_BE_DONE',
        Status.inProgress => 'IN_PROGRESS',
        Status.done => 'DONE',
      };
}
