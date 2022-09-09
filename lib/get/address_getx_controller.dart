import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_stor/api/address_api_controller.dart';
import 'package:smart_stor/model/address_details.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/city.dart';
class AddressGetxController extends GetxController {

  AddressApiController addressApiController = AddressApiController();
  RxList<AddressDetails> addresses = <AddressDetails>[].obs;
  RxList<City> cities = <City>[].obs;
  RxBool loading = false.obs;

  static AddressGetxController get to => Get.find<AddressGetxController>();

  void onInit() {
    getCities();
    getAddresses();
    super.onInit();
  }
  Future<ApiResponse> createAddress(String name,
      String info,
      String contactNumber,
      int city_id,) async {
    ApiResponse processResponse = await addressApiController
        .createAddress(name:name ,cityId: city_id ,contactNumber: contactNumber ,info: info );
    addresses.refresh();
    update();
    return getResponse(
        processResponse.success, message: processResponse.message);

  }

  Future<void> getAddresses() async {
    loading.value = true;
    addresses.value = await addressApiController.getAddresses();
    loading.value = false;
    update();
  }

  Future<void> getCities() async {
    loading.value = true;
    cities.value = await addressApiController.getCities();
    loading.value = false;
    update();
  }


  Future<ApiResponse> deleteAddress(int index) async {
    loading = true.obs;
    ApiResponse processResponse = await addressApiController.deleteAddress(id: index);

    // update();
    loading.value = false;
    update();
    return processResponse;

  }

  ApiResponse getResponse(bool success,
      {String message = 'Operation completed successfully'}) {
    return ApiResponse(
      message: message,
      success: success,
    );
  }
}