import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:smart_stor/api/api_setting.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/city.dart';
import 'package:smart_stor/model/home.dart';
import 'package:smart_stor/model/user.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/api_helpers.dart';

class AuthApiController with ApiHelpers{

  Future<ApiResponse> login({required String mobile , required String password}) async{
    Uri uri = Uri.parse(ApiSettings.login);
    var response = await http.post(uri,body :{
      'mobile': mobile,
      'password' : password,
    });
    if(response.statusCode == 200 ||response.statusCode == 400 ){
      var json = jsonDecode(response.body);
      if(response.statusCode == 200){
        User user = User.fromJson(json['data']);
        SharedPrefController().save(user);

      }
      return ApiResponse(message: json['message'], success: json['status']);
    }
    return errorResponse;

  }
  Future<ApiResponse> register(User user) async {
    Uri uri = Uri.parse(ApiSettings.register);
    var response = await http.post(uri, body: {
      'name': user.name,
      'mobile': user.mobile,
      'password': user.password,
      'gender': user.gender,
      'city_id': user.cityId,
      'STORE_API_KEY': 'dfc7fe1c-f3d4-4629-8347-84c88efcdf27',
    });
    print(response.body);
    if (response.statusCode == 201 || response.statusCode == 400) {
      var json = jsonDecode(response.body);

      return ApiResponse(message: json['message'], success: json['status']);
    }

    return errorResponse;
  }
  Future<ApiResponse> logout() async {
    String token = SharedPrefController().getValueFor<String>(PrefKeys.token.name)!;
    Uri uri = Uri.parse(ApiSettings.logout);
    var response = await http.get(uri, headers: {
      HttpHeaders.authorizationHeader: token,
      HttpHeaders.acceptHeader: 'application/json',
    });

    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 400) {
      var json = jsonDecode(response.body);
      SharedPrefController().clear();

      return ApiResponse(message: json['message'], success: json['status']);
    }

    return errorResponse;
  }
  Future<List<City>> getCities() async {
    Uri uri = Uri.parse(ApiSettings.cities);
    var response = await http.get(uri, headers: {HttpHeaders.acceptHeader: 'application/json'});
    print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 400) {
      var json = jsonDecode(response.body);
      var jsonDataObject =json['list'] as List;
      return jsonDataObject.map((jsonObject) => City.fromJson(jsonObject)).toList();

    }
    return [];
  }
  Future<Home?> initHome() async {
    var response = await http.get(Uri.parse(ApiSettings.home), headers: {
      HttpHeaders.authorizationHeader:
      SharedPrefController().getValueFor<String>(PrefKeys.token.name)!,
      'X-Requested-With': 'XMLHttpRequest',
      'Accept': 'application/json'
    });
    if (response.statusCode == 200 || response.statusCode == 400) {
      var json = jsonDecode(response.body);
      var jsonDataObject = jsonDecode(response.body)['data'];
      Home home = Home.fromJson(jsonDataObject);
      return home;
    }
  }



  }