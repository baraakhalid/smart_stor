import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/drawer/odrers_screen.dart';
import 'package:smart_stor/get/cart_getx_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/cart.dart';
import 'package:smart_stor/util/context_extenssion.dart';
import 'package:smart_stor/widgets/product_cart.dart';
// class CartScreen extends StatelessWidget {
//   const CartScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(icon:Icon(Icons.arrow_back_ios),onPressed: (){
//           Navigator.pushNamed(context, '/home_screen');
//         },),
//         title: Padding(
//           padding: const EdgeInsets.only(top: 15),
//           child: Text(
//           'Your Cart',
//           style: GoogleFonts.nunito(fontWeight: FontWeight.bold,fontSize: 20),
//     ),
//         ),
//           ),
//       body:Column(
//         children: [
//           Text(
//             'items',
//             style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black38),
//           ),
//           Expanded(
//             child: ListView(
//               children: [
//
//                 Dismissible(
//                   key: Key('a'),
//                   direction: DismissDirection.endToStart,
//                   background: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xFFFFE6E6),
//                       borderRadius: BorderRadius.circular(15),
//
//                     ),
//                     child: Row(
//                       children: [
//                         Spacer(),
//                         Icon(Icons.delete),
//                       ],
//                     ),),
//                   child:
//                    Container(
//                      height: 110,
//                      margin: EdgeInsets.only(left: 25,right: 25,top: 15),
//                      decoration: BoxDecoration(
//                          color: Colors.white,
//                          borderRadius: BorderRadius.circular(20),
//                          boxShadow: [
//                            BoxShadow(
//                                color: Colors.black38,
//                                offset: Offset(0,0),
//                                blurRadius: 4
//                            ),
//
//                          ]
//                      ),
//                      child:
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset('images/favorite1.png'),
//                         ),
//                         SizedBox(
//                           width: 20,
//
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10),
//                           child: Column(
//
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'White Thobe',
//                                 style: GoogleFonts.nunito(
//                                     fontWeight: FontWeight.bold, fontSize: 16),
//                               ),
//                               Text(
//                                 ' Color : White',
//                                 style: GoogleFonts.nunito(
//                                     fontWeight: FontWeight.w300, fontSize: 12),
//                               ),
//                               Text("\$50",style: TextStyle(fontSize: 20,color: Colors.red),)
//                             ],
//                           ),
//                         ),
//                         Spacer(),
//                         Text('2',style: TextStyle(fontSize: 22),),
//                         SizedBox(width: 10,),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height:40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xff2D2E49),
//                               ),
//                               child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,),
//
//                               ),),
//                             SizedBox(height: 10,),
//                             Container(
//                               height:40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xff2D2E49),
//                               ),
//                               child: IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white,),
//
//                               ),),
//                           ],
//
//                         ),
//                         SizedBox(width: 5,),
//
//                         // IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))
//
//
//                       ],
//                     ),
//                 ),
//                 ),
//                 Dismissible(
//                   key: Key('b'),
//                   direction: DismissDirection.endToStart,
//                   background: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xFFFFE6E6),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Row(
//                       children: [
//                         Spacer(),
//                         Icon(Icons.delete),
//                       ],
//                     ),),
//                   child:
//                    Container(
//                      height: 110,
//                      margin: EdgeInsets.only(left: 25,right: 25,top: 15),
//                      decoration: BoxDecoration(
//                          color: Colors.white,
//                          borderRadius: BorderRadius.circular(20),
//                          boxShadow: [
//                            BoxShadow(
//                                color: Colors.black38,
//                                offset: Offset(0,0),
//                                blurRadius: 4
//                            ),
//
//                          ]
//                      ),
//                      child:
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset('images/favorite1.png'),
//                         ),
//                         SizedBox(
//                           width: 20,
//
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10),
//                           child: Column(
//
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'White Thobe',
//                                 style: GoogleFonts.nunito(
//                                     fontWeight: FontWeight.bold, fontSize: 16),
//                               ),
//                               Text(
//                                 ' Color : White',
//                                 style: GoogleFonts.nunito(
//                                     fontWeight: FontWeight.w300, fontSize: 12),
//                               ),
//                               Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
//                             ],
//                           ),
//                         ),
//                         Spacer(),
//                         Text('2',style: TextStyle(fontSize: 22),),
//                         SizedBox(width: 10,),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height:40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xff2D2E49),
//                               ),
//                               child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,),
//
//                               ),),
//                             SizedBox(height: 10,),
//                             Container(
//                               height:40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color(0xff2D2E49),
//                               ),
//                               child: IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white,),
//
//                               ),),
//                           ],
//
//                         ),
//                         SizedBox(width: 5,),
//
//
//
//                       ],
//                     ),
//                 ),
//                 ),
//
//               ],
//             ),
//           ),
//
//           Container(
//             padding: EdgeInsets.symmetric(
//               vertical: 15,
//               horizontal: 30,
//             ),
//             // height: 174,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30),
//                 topRight: Radius.circular(30),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   offset: Offset(0, -15),
//                   blurRadius: 20,
//                   color: Color(0xFFDADADA).withOpacity(0.15),
//                 )
//               ],
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text('Items',style: GoogleFonts.poppins(fontSize: 16),),
//                     Spacer(),
//                     Text('6',style: GoogleFonts.poppins(fontSize: 18),),
//                   ],
//                 ),
//                 SizedBox(height: 13,),
//                 Row(
//                   children: [
//                     Text('Sub total',style: GoogleFonts.poppins(fontSize: 16),),
//                     Spacer(),
//                     Text('\$21.00',style: GoogleFonts.poppins(fontSize: 18),),
//                   ],
//                 ),
//
//                 SizedBox(height: 13,),
//                 Row(
//                   children: [
//                     Text('Total',style: GoogleFonts.poppins(fontSize: 16,color: Color(0xffFF7750)),),
//                     Spacer(),
//                     Text('\$.05',style: GoogleFonts.poppins(fontSize: 18,color: Color(0xffFF7750)),),
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size(325, 63.83),
//
//                     shape:
//                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//
//                     // primary: Colors.white,
//                     primary: Color(0xffFF7750),
//                   ),
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(context, '/delivery_details_screen');
//                   },
//
//                   child: Text(
//                     'Check Out',
//                     style: TextStyle(
//
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//
//
//
//               ],
//             ),
//           ),
//
//         ],
//       ) ,
//
//     );
//   }
// }
class CartProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetX<CartGetxController>(
        builder: (CartGetxController controller) {
          return controller.loading.value
              ? Center(child: CircularProgressIndicator())
              : controller.cartItems.isNotEmpty
              ? Container(
            padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 10.h),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller.cartItems.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ProductCartWidget(
                        cartItem: controller.cartItems[index],
                        onTap: () async {
                          await deleteItem(
                            cartItem: controller.cartItems[index],
                            context: context,
                          );
                        },
                      );
                    },
                  ),
                ),
                ElevatedButton(
                 child:Text ('Make Order'),
                  onPressed: () {
                    Get.to(OrdersScreen());
                  },
                ),
              ],
            ),
          )
              : Center(
            child: Text('No Data'),
          );
        },
      ),
    );
  }

  deleteItem({required Cart cartItem, required BuildContext context}) async {
    ApiResponse getResponse = await CartGetxController.to.deleteItem(cartItem.id);
    String msg = getResponse==true ? 'delete success' : 'delete fail';
    context.ShowSnackBar(message: msg);
    // Helper.showSnackBar(context, text: msg);
  }

  String get cart {
    List<Map<String, dynamic>> items = [];
    CartGetxController.to.cartItems.map((element) => items.add({'product_id': element.productId, 'quantity': element.count})).toList();
    return jsonEncode(items);
  }


}