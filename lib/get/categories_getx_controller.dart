import 'package:get/get.dart';
import 'package:smart_stor/api/store_api_controller.dart';
import 'package:smart_stor/model/category.dart';
import 'package:smart_stor/model/subCategory.dart';

class CategoryGetxController extends GetxController {
  final StoreApiController storeApiController = StoreApiController();
  RxList<Categories> categories = <Categories>[].obs;
  RxList<SubCategory> subCategories = <SubCategory>[].obs;
  RxBool loading = false.obs;

  static CategoryGetxController get to => Get.find();

  void onInit() {
    getCategories();
    super.onInit();
  }

  Future<void> getCategories() async {
    loading.value = true;
    categories.value = await storeApiController.getCategories();
    loading.value = false;
    update();
  }


  Future<void> getSubCategories({required int id}) async {
    loading.value = true;
    subCategories.value = await storeApiController.getSubCategories(id:id);
    loading.value = false;
    update();
  }

}