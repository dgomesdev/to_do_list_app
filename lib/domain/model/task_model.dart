import 'package:to_do_list_app/data/entity/response/task_response_entity.dart';
import 'package:to_do_list_app/domain/model/priority.dart';
import 'package:to_do_list_app/domain/model/status.dart';

class TaskModel {
  late final String id;
  late final String title;
  late final String description;
  late final Priority priority;
  late final Status status;
  late final String userId;

  TaskModel({required TaskResponseEntity task}) {
    id = task.id;
    title = task.title;
    description = task.description;
    priority = task.priority.toPriority();
    status = task.status.toStatus();
    userId = task.userId;
  }
}
