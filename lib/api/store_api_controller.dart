import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:smart_stor/api/api_setting.dart';
import 'package:smart_stor/model/category.dart';
import 'package:smart_stor/model/product.dart';
import 'package:smart_stor/model/product_details.dart';
import 'package:smart_stor/model/subCategory.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';

class StoreApiController{
   Future<List<Categories>> getCategories() async{
      String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;
      Uri uri = Uri.parse(ApiSettings.categories);
      var response= await http.get(uri,headers: {
      HttpHeaders.authorizationHeader : token,
      HttpHeaders.acceptHeader:'application/json'

      });
      if(response.statusCode == 200  ){
         var json=jsonDecode(response.body);
         var dataJsonObject=json['list'] as List;
         return dataJsonObject
             .map((jsonObject) => Categories.fromJson(jsonObject)).toList();
      }
      return[];
}
   Future<List<SubCategory>> getSubCategories({required int id}) async{
      String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;
      Uri uri = Uri.parse(ApiSettings.categories+ '/$id');
      var response= await http.get(uri,headers: {
         HttpHeaders.authorizationHeader : token,
         HttpHeaders.acceptHeader:'application/json'

      });
      if(response.statusCode == 200  ){
         var json=jsonDecode(response.body);
         var dataJsonObject=json['list'] as List;
         return dataJsonObject
             .map((jsonObject) => SubCategory.fromJson(jsonObject)).toList();
      }
      return[];
   }
   Future<List<Product>> getProducts({required int id}) async{
      String token =SharedPrefController().getValueFor<String>( PrefKeys.token.name)!;
      Uri uri = Uri.parse(ApiSettings.products+ '/$id');
      var response= await http.get(uri,headers: {
         HttpHeaders.authorizationHeader : token,
         HttpHeaders.acceptHeader:'application/json'

      });
      if(response.statusCode == 200  ){
         var json=jsonDecode(response.body);
         var dataJsonObject=json['list'] as List;
         return dataJsonObject
             .map((jsonObject) => Product.fromJson(jsonObject)).toList();
      }
      return[];
   }
   Future<ProductDetails?> getProductDetails({required int id}) async {
      var response = await http.get(Uri.parse(ApiSettings.products_detals+'/$id'),headers: {
         HttpHeaders.authorizationHeader: SharedPrefController().getValueFor<String>(PrefKeys.token.name)!,
         'X-Requested-With': 'XMLHttpRequest',
      });
      if (response.statusCode == 200 || response.statusCode == 400) {
         ProductDetails productdetails = ProductDetails.fromJson(jsonDecode(response.body)['object']);
         return productdetails;
      }
      return null;
   }

   

}