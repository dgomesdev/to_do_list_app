import 'package:to_do_list_app/data/entity/response/response_entity.dart';

class TaskResponseEntity implements ResponseEntity {
  final String id;
  final String title;
  final String description;
  final String priority;
  final String status;
  final String userId;

  const TaskResponseEntity(
    this.id,
    this.title,
    this.description,
    this.priority,
    this.status,
    this.userId,
  );
}
