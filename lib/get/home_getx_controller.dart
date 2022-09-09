import 'package:get/get.dart';
import 'package:smart_stor/api/auth_api_controller.dart';
import 'package:smart_stor/model/home.dart';

class HomeGetxController extends GetxController {
  Home? home;
  RxBool isLoading = false.obs;
  AuthApiController dbController = AuthApiController();

  static HomeGetxController get to => Get.find();

  @override
  void onInit() {
    initHome();
    super.onInit();
  }


  Future<void> initHome() async {
    isLoading.value = true;
    home = await dbController.initHome();
    isLoading.value = false;
    update();
  }

}
