import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:smart_stor/api/api_setting.dart';
import 'package:smart_stor/model/address_details.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/city.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/api_helpers.dart';

class AddressApiController with ApiHelpers {

  Future<List<AddressDetails>> getAddresses() async {
    String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;
    Uri uri = Uri.parse(ApiSettings.addresses);
    var response = await http
        .get(uri, headers: {HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader : token,
    });
    print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 400) {
      var json = jsonDecode(response.body);
      var jsonDataObject = json['list'] as List;
      return jsonDataObject
          .map((jsonObject) => AddressDetails.fromJson(jsonObject))
          .toList();
    }
    return [];
  }
  Future<ApiResponse> createAddress({required String name , required int cityId ,required String contactNumber ,required String  info}) async {
    Uri uri = Uri.parse(ApiSettings.addresses);
    String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;

    var response = await http.post(uri, body: {
      'name': name,
      'info': info,
      'contact_number':contactNumber,
      'city_id': cityId.toString(),
    },headers: {
      HttpHeaders.authorizationHeader : token,
      HttpHeaders.acceptHeader:'application/json'
    });
    if (response.statusCode == 201 || response.statusCode == 400) {
      var json = jsonDecode(response.body);

      return ApiResponse(message: json['message'], success: json['status']);
    }

    return errorResponse;
  }
  Future<List<City>> getCities() async {
    Uri uri = Uri.parse(ApiSettings.cities);
    var response = await http
        .get(uri, headers: {HttpHeaders.acceptHeader: 'application/json'});
    if (response.statusCode == 200 || response.statusCode == 400) {
      var json = jsonDecode(response.body);
      var jsonDataObject = json['list'] as List;
      return jsonDataObject
          .map((jsonObject) => City.fromJson(jsonObject))
          .toList();
    }
    return [];
  }
  Future<ApiResponse> deleteAddress  ({required int id }) async {

    String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;

    Uri uri = Uri.parse(ApiSettings.addresses+'/$id');
    print(uri);
    var response = await http.delete(uri,headers: {HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader : token});
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 400) {
      var json = jsonDecode(response.body);
      return ApiResponse(message: json['message'], success:true);
    }
    return errorResponse;
  }

// Future<bool> updateAddress( AddressDetails address) async {
  //   // String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;
  //   // Uri uri = Uri.parse(ApiSettings.addresses+'/id');
  //   // var response= await http.put(http.get(uri),
  //   //     headers: {
  //   //   HttpHeaders.authorizationHeader : token,
  //   //   HttpHeaders.acceptHeader:'application/json'
  //   //
  //   // });
  //   Uri uri = Uri.parse(ApiSettings.addresses+'/id');
  //
  //   var response = await http.put(
  //        http.get(uri),
  //         headers: requestHeaders,
  //     body: {
  //       'name': address.name,
  //       'info': address.info,
  //       'contact_number': address.contactNumber,
  //       'city_id': address.cityId.toString(),
  //       'lat': address.lat??'',
  //       'lang': address.lang??'',
  //     },
  //   );
  //   if (isSuccessRequest(response.statusCode)) {
  //     print('-------------si---------------------');
  //     return true;
  //   } else if (response.statusCode != 500) {
  //     showMessage(context, response);
  //     return false;
  //   }
  //   handleServerError(context);
  //   return false;
  // }
  //
  // Future<bool> deleteAddress({required BuildContext context, required addressId}) async {
  //   var response = await http.delete(
  //     getUrl(ApiSettings.ADDRESS + '/$addressId'),
  //     headers: requestHeaders,
  //   );
  //
  //   if (isSuccessRequest(response.statusCode)) {
  //     return true;
  //   } else if (response.statusCode != 500) {
  //     showMessage(context, response);
  //     return false;
  //   }
  //   handleServerError(context);
  //   return false;
  // }
}