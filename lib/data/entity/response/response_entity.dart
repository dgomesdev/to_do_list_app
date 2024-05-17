import 'dart:convert';

import 'package:to_do_list_app/data/entity/response/error_response_entity.dart';
import 'package:to_do_list_app/data/entity/response/task_response_entity.dart';
import 'package:to_do_list_app/data/entity/response/user_response_entity.dart';

abstract interface class ResponseEntity {}

ResponseEntity getResponse(String json) => switch (jsonDecode(json)) {
      {
        'id': String id,
        'username': String username,
        'email': String email,
        'password': String password,
      } =>
        UserResponseEntity(
          id,
          username,
          email,
          password,
        ),
      {
        'id': String id,
        'title': String title,
        'description': String description,
        'priority': String priority,
        'status': String status,
        'userId': String userId,
      } =>
        TaskResponseEntity(
          id,
          title,
          description,
          priority,
          status,
          userId,
        ),
      {'message': String message} => ErrorResponseEntity(message: message),
      _ => throw const FormatException('Failed to load task'),
    };
