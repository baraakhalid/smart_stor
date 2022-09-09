import 'package:smart_stor/model/api_response.dart';

mixin ApiHelpers{

  ApiResponse get errorResponse => ApiResponse(message: 'something went wrong , try again',success: false);
}