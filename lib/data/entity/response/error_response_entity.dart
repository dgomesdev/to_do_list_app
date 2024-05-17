import 'package:to_do_list_app/data/entity/response/response_entity.dart';

class ErrorResponseEntity implements ResponseEntity {
  final String message;

  const ErrorResponseEntity({required this.message});
}
