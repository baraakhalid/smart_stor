import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/database/controllers/cart_db_controller.dart';
import 'package:smart_stor/get/cart_getx_controller.dart';
import 'package:smart_stor/get/products_getx_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/cart.dart';
import 'package:smart_stor/model/product.dart';
import 'package:smart_stor/model/product_details.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/context_extenssion.dart';
import 'package:smart_stor/util/helpers.dart';

import '../widgets/app_text_field_product.dart';

class ProductDetailsScreen extends StatefulWidget {
  // ProductGetxController controller = Get.put(ProductGetxController());

  // final Product productDetails;
  // ProductDetailsScreen({Key? key,required this.productDetails}) : super(key: key);
  final int id;
  const ProductDetailsScreen({Key? key ,required this.id}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>with Helpers {
  ProductGetxController controller = Get.put(ProductGetxController());
  // CartGetxController cartGetxController = Get.put(CartGetxController());

  int cardIncrement = 1;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await ProductGetxController.to
          .getProductDetails(id: widget.id);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      backgroundColor: Color(0xfff5f6f9),

      body: GetX<ProductGetxController>(
          builder: (ProductGetxController controller) {
            return controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : Stack(
                 children: [
                SizedBox(
                  height: 445.h,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 400.h,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration:
                      Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: ProductGetxController
                        .to.productDetails.value!.images!
                        .map((ProductImages image) {
                      return Builder(
                        builder: (BuildContext context) {
                          return CachedNetworkImage(
                            height: 400.h,
                            width: double.infinity,
                            imageUrl: image.imageUrl,
                            placeholder: (context, url) =>
                                Center(
                                  child: CircularProgressIndicator(
                                    // color: AppColors.PRIMARY_COLOR,
                                  ),
                                ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            fit: BoxFit.cover,
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    height: 413.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.h),
                        topRight: Radius.circular(40.h),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 40.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              AppTextFieldProduct(
                                content: ProductGetxController
                                    .to.productDetails.value!.nameEn,
                                color: Colors.black,
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  // await ProductGetxController.to
                                  //     .addFavoriteProducts(
                                  //     context: context,
                                  //     product: ProductGetxController
                                  //         .to.productDetails.value!);
                                },
                                child: Container(
                                  height: 52.h,
                                  width: 52.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ProductGetxController
                                          .to
                                          .productDetails
                                          .value!
                                          .isFavorite
                                          ? Colors.red
                                          : Colors.grey),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ProductGetxController.to.productDetails.value!
                              .price !=
                              null ?
                              Row(
                            children: [
                              AppTextFieldProduct(
                                content: 'Offer :',
                                color: Colors.black,
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.start,
                              ),
                              AppTextFieldProduct(
                                content: '${ProductGetxController.to
                                    .productDetails.value!.price}₪',
                                color: Colors.black,
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.start,
                                textDecoration:
                                TextDecoration.lineThrough,
                                decorationColor: Colors.red,
                              ),
                              // AppTextFieldProduct(
                              //   content: '   ${ProductGetxController.to.productDetails.value!.offerPrice}₪',
                              //   color: Colors.black,
                              //   fontSize: 21.sp,
                              //   fontWeight: FontWeight.w600,
                              //   textAlign: TextAlign.start,
                              // ),
                            ],
                          )
                              : AppTextFieldProduct(
                            content:
                            'Price : ${ProductGetxController.to.productDetails
                                .value!.price} \₪',
                            color: Colors.black,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 8.h),
                          AppTextFieldProduct(
                            content: ProductGetxController
                                .to.productDetails.value!.infoEn,
                            color: Colors.grey,
                            fontSize: 16.sp,
                            textAlign: TextAlign.start,
                          ),

                          SizedBox(height: 40.h,),
                          AppTextFieldProduct(
                            content: 'Ratting Product',
                            color: Colors.grey,
                            fontSize: 16.sp,
                            textAlign: TextAlign.start,
                          ),
                          // SizedBox(height: 10.h,),
                          // RatingBar.builder(
                          //   initialRating: double.parse(
                          //       ProductGetxController
                          //           .to.productDetails.value!.productRate
                          //           .toString()),
                          //   minRating: 1,
                          //   direction: Axis.horizontal,
                          //   allowHalfRating: true,
                          //   itemCount: 5,
                          //   itemSize: 35.h,
                          //   itemBuilder: (context, _) => Icon(
                          //     Icons.star,
                          //     color: Colors.amber,
                          //   ),
                          //   onRatingUpdate: (rating) {
                          //     ProductGetxController.to.rattingProduct(
                          //         product: ProductGetxController
                          //             .to.productDetails.value!,
                          //         context: context,
                          //         rate: rating);
                          //   },
                          // ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () async{
                              // showCartDialog();
                              print('ll');
                              getCart(controller.productDetails.value!);
                              ApiResponse process= await CartGetxController.to.create(getCart(controller.productDetails.value!));
                              context.ShowSnackBar(message: process.message,error: !process.success);

                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(325, 63.83),

                              shape:
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                              // primary: Colors.white,
                              primary: Color(0xffFF7750),
                            ),
                            child: Text('Add to cart',
                              style: GoogleFonts.poppins(fontSize: 16.sp,
                                fontWeight: FontWeight.bold,),),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
      ),




    );
  }

  showCartDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,

      builder: (BuildContext context) =>
          StatefulBuilder(builder: (context, setState) {
            //  CartGetxController cartGetxController = Get.put(CartGetxController());
            // ProductGetxController controller = Get.put(ProductGetxController());


            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                // clipBehavior: Clip.antiAlias,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                      ),
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      child: AppTextFieldProduct(
                        content: 'Add To Card',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: CachedNetworkImage(
                              // imageUrl: widget.productDetails.imageUrl!,
                              imageUrl: ProductGetxController.to.productDetails.value!.imageUrl,
                              placeholder: (context, url) =>
                                  Center(
                                    child: CircularProgressIndicator(
                                      // color: AppColors.PRIMARY_COLOR,
                                    ),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.antiAlias,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  FloatingActionButton(
                                     backgroundColor:Color(0xffFF7750) ,
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        ++cardIncrement;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AppTextFieldProduct(
                                      content: cardIncrement.toString(),
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor:Color(0xffFF7750) ,
                                    //     .PRIMARY_TEXT_COLOR,
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        cardIncrement == 1
                                            ? 1
                                            : --cardIncrement;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AppTextFieldProduct(
                                  content:
                                  'Total Price: ${ProductGetxController.to.productDetails.value!.price! *
                                      cardIncrement}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFF7750),
                              ),
                              onPressed: () async {
                                print('ll');
                                getCart(controller.productDetails.value!);
                                ApiResponse process= await CartGetxController.to.create(getCart(controller.productDetails.value!));
                                context.ShowSnackBar(message: process.message,error: !process.success);
                              },
                              child: Text('Add'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red.shade800,
                              ),
                              onPressed: () {
                                cardIncrement = 1;
                                Get.back();
                              },
                             child: Text('Cancel'),

                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          ),
    );
  }

  Cart getCart(ProductDetails product) {
    Cart cartItem = Cart();
    cartItem.productImage = product.imageUrl!;
    cartItem.productId = product.id!;
    cartItem.price = product.price! as double ;
    cartItem.productName = product.nameEn!;
    // cartItem.productNameAr = product.nameAr!;
    cartItem.count = cardIncrement as int;
    cartItem.userId=int.parse(SharedPrefController().getValueFor<String>(PrefKeys.id.name)!);

    return cartItem;
  }


}














////////// two
// class ProductDetailsScreen extends StatefulWidget {
//   final int id;
//   const ProductDetailsScreen({Key? key ,required this.id}) : super(key: key);
// //
//   @override
//   State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
// }
//
// class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
//   ProductGetxController controller = Get.put(ProductGetxController());
//   // CartGetxController cartGetxController = Get.put(CartGetxController());
//
//
//   @override
//   void initState()
//   {
//     super.initState();
//     Future.delayed(Duration(seconds: 0),(){
//       controller.getProductDetails(id: widget.id);
//       // cartGetxController.create(getCart(controller.productDetails.value!));
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(),
//       body: GetX<ProductGetxController>(
//           builder: (ProductGetxController controller ) {
//             return controller.loading.value
//                 ?  Center(child: CircularProgressIndicator())
//                 :  Column(
//               children: [
//                 // HeaderPage<ProductImages>(images: ProductGetxController.to.productDetails.value!.images!),
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 25.w),
//                     child: Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.symmetric(vertical: 20.h),
//                           width: 325.w,
//                           height: 50.h,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   AppText(
//                                       text: controller.productDetails.value!.nameEn!,
//                                       fontSize: 16.sp,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold),
//                                   SizedBox(
//                                     height: 5.h,
//                                   ),
//                                   AppText(
//                                     text: '\$${controller.productDetails.value!.price.toString()}',
//                                     fontSize: 17.sp,
//                                     color: Color(0xffFF7750),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: (){
//                                   // controller.addFavoriteProducts(product: controller.products.value.firstWhere((element) => element.id==controller.productDetails.value!.id));
//                                 },
//                                 icon: Icon(
//                                 Icons.favorite),
//
//                                 color: Colors.red,
//                               )
//                             ],
//                           ),
//                         ),
//                         AppText(
//                           text:
//                           controller.productDetails.value!.infoEn!,
//                           fontSize: 16.sp,
//                           color: Colors.grey.shade400,
//                         ),
//                         SizedBox(
//                           height: 12.h,
//                         ),
//                         SizedBox(
//                           height: 20.h,
//                           width: double.infinity,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               ListView.builder(
//                                 shrinkWrap: true,
//                                 itemBuilder: (context, index) {
//                                   return Icon(
//                                     Icons.star,
//                                     color: Colors.yellow,
//                                     size: 35,
//                                   );
//                                 },
//                                 itemCount: 5,
//                                 scrollDirection: Axis.horizontal,
//                               ),
//                               AppText(
//                                   text: '(5.0)',
//                                   fontSize: 12,
//                                   color: Color(0xff3E3E3E))
//                             ],
//                           ),
//                         ),
//                         Spacer(flex: 3),
//                         ElevatedButton(
//
//                         onPressed: () async{
//                             // getCart(controller.productDetails.value!);
//                             // ApiResponse process= await cartGetxController.create(getCart(controller.productDetails.value!));
//                             // context.ShowSnackBar(message: process.message,error: !process.success);
//                           },
//                           style: ElevatedButton.styleFrom(
//                               minimumSize: Size(325.w, 63.83.h),
//                               primary: Color(0xffFF7750),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(16.r))),
//                           child: AppText(
//                               text: 'Add To Cart',
//                               fontSize: 16.sp,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Spacer(flex: 1),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           }
//       ),
//
//     );
//   }
//   Cart getCart(ProductDetails product) {
//     // print(int.parse(SharedPrefController().getValueFor<String>(PrefKeys.id.name)!).runtimeType);
//     Cart cart = Cart();
//     cart.productId = product.id;
//     cart.price = product.price as double;
//     cart.total = product.price as double;
//     cart.userId = (SharedPrefController().getValueFor<String>(PrefKeys.id.name)!);
//     cart.count = 1;
//     cart.productNameEn = product.nameEn;
//     cart.productNameAr = product.nameAr;
//     cart.productImage = product.imageUrl;
//
//     return cart;
//   }
// }

