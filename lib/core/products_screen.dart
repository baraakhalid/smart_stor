import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/core/product_details.dart';
import 'package:smart_stor/get/products_getx_controller.dart';
import 'package:smart_stor/model/custom_widget.dart';
import 'package:smart_stor/widgets/product_widget.dart';
class ProductsScreen extends StatefulWidget {
  final int id;

   ProductsScreen({Key? key,required this.id}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  ProductGetxController controller = Get.put(ProductGetxController());

  @override
  void initState() {
    Future.delayed(Duration.zero,()async{
      await ProductGetxController.to.getProduct(id: widget.id);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body:GetX<ProductGetxController>(
          builder: (ProductGetxController controller){
            return controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : controller.products.isNotEmpty
                ? GridView.builder(
                 itemCount: controller.products.length,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                 scrollDirection:Axis.vertical,
                   gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.h,
                     childAspectRatio: 150.w / 180.h,
                     mainAxisExtent: 275,

                   ),
                     itemBuilder: (context, index){
                   return
                     productWidget(product: controller.products[index],
                       // onTap: () => Get.to(
                       //   ProductDetailsScreen(id: widget.id!,
                       //       ),
                       // ),
                     );
            },
            )
                : Center(child: Text('No Data'));
          }
      )








    );
  }
}

