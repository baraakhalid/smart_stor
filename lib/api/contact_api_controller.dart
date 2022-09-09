import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:smart_stor/api/api_setting.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/api_helpers.dart';

class ContactApiController with ApiHelpers {

  Future<ApiResponse> contact({
    required String subject ,
    required String message
  }) async {
    Uri uri = Uri.parse(ApiSettings.contact);
    String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;
    var response = await http.post(uri, headers: {
      HttpHeaders.authorizationHeader : token,
      HttpHeaders.acceptHeader:'application/json'
    },body: {
      'subject':subject,
      'message': message,
    });
    if (response.statusCode == 201 || response.statusCode == 400) {
      var json = jsonDecode(response.body);

      return ApiResponse(message: json['message'], success: json['status']);
    }

    return errorResponse;
  }
}