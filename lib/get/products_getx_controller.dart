import 'package:get/get.dart';
import 'package:smart_stor/api/store_api_controller.dart';
import 'package:smart_stor/model/product.dart';
import 'package:smart_stor/model/product_details.dart';

class ProductGetxController extends GetxController {
  final StoreApiController storeApiController = StoreApiController();
  RxList<Product> products = <Product>[].obs;
  RxList<Product> favoriteProducts = <Product>[].obs;
  Rx<ProductDetails?> productDetails = ProductDetails().obs;
  RxBool loading = false.obs;


  static ProductGetxController get to => Get.find();
  void onInit() {
    super.onInit();
    // getFavoriteProducts();
  }

  Future<void> getProduct({required int id}) async {
    loading.value = true;
    products.value = await storeApiController.getProducts(id: id);
    loading.value = false;
    update();
  }
  Future<ProductDetails?> getProductDetails({required int id}) async {
  loading.value = true;
  productDetails.value = await storeApiController.getProductDetails(id: id) ;
  loading.value = false;
  // productDetails.refresh();
  // products.refresh();
  // favoriteProducts.refresh();
  update();
  return productDetails.value;
  }

  // Future<void> getFavoriteProducts() async {
  //   loading.value = true;
  //   favoriteProducts.value = await storeApiController.getFavoriteProducts();
  //   loading.value =false;
  //   update();
  // }
  //
  // void onInit() {
  //   super.onInit();
  //   getFavoriteProducts();
  // }
  // Future<void> getProductDetails({required int id}) async {
  //   loading.value = true;
  //   products.value = await storeApiController.getProductDetails(id: id);
  //   loading.value = false;
  //   products.refresh();
  //   // products.refresh();
  //   // favoriteProducts.refresh();
  //   update();
  // }
  //
  // Future<void> addFavoriteProducts({required ProductDetails product,required BuildContext context}) async {
  //   bool status = await productApiController.addFavoriteProducts(context, id: product.id);
  //   if(status){
  //     int index = favoriteProducts.indexWhere((element) => element.id == product.id);
  //     if(index != -1) {
  //       favoriteProducts.removeAt(index);
  //       productDetails.value!.isFavorite = !productDetails.value!.isFavorite;
  //     } else {
  //       favoriteProducts.add(product);
  //       productDetails.value!.isFavorite = !productDetails.value!.isFavorite;
  //     }
  //   }
  //   productDetails.refresh();
  //   favoriteProducts.refresh();
  //   update();
  // }
  //
  // Future<void> rattingProduct({required ProductDetails product,required BuildContext context,required double rate}) async {
  //   await productApiController.productRate(context, id: product.id,ratting: rate);
  //   productDetails.refresh();
  //   products.refresh();
  //   favoriteProducts.refresh();
  //   update();
  // }
}