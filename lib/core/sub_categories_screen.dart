import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../get/categories_getx_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/api/store_api_controller.dart';
import 'package:smart_stor/core/products_screen.dart';
import 'package:smart_stor/get/categories_getx_controller.dart';
import 'package:smart_stor/model/category.dart';
import 'package:smart_stor/model/subCategory.dart';
import 'package:smart_stor/widgets/sub_category_widget.dart';
class SubCategoriesScreen extends StatefulWidget {
  final int id;

  SubCategoriesScreen({required this.id});

  @override
  State<SubCategoriesScreen> createState() => _SubCategoriesScreenState();

}

class _SubCategoriesScreenState extends State<SubCategoriesScreen> {
  CategoryGetxController controller = Get.put(CategoryGetxController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () async {
      await controller.getSubCategories(id: widget.id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text
           ('SubCategories'),

          ),
      body: GetX<CategoryGetxController>(
        builder: (controller) {
          return controller.loading.value
              ? Center(child: CircularProgressIndicator())
              :controller.subCategories.isNotEmpty
              ? Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: ListView(
                   children: [
                  Text(
                   'Sub Categories',style: GoogleFonts.poppins(fontSize: 17.sp,
                  color: Color(0xFF3E3E3E),
                  fontWeight: FontWeight.bold,),

                  ),
                  SizedBox(
                  height: 30.h,
                  ),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.subCategories.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 150.w / 180.h,
                        crossAxisCount: 2,
                        crossAxisSpacing: 19.sp,
                        mainAxisSpacing: 5.sp),
                    itemBuilder: (context, index) {
                      return SubCategoryWidget(subCategory: controller.subCategories[index],
                        onTap: () =>
                            Get.to(ProductsScreen(
                                id: controller.subCategories[index].id),),);
                    })
                ],
            ),
              )
              : Center(child: Text('No Data',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),));
        },
      ),
    );
  }
}

//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(top: 10),
//           child: Text('Sub Categories'),
//         ),
//       ),
//
//       body: GridView(
//         padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//         scrollDirection:Axis.vertical,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisExtent: 200,
//           childAspectRatio: 100/150,
//
//         ),
//         children: [
//
//           InkWell(
//             onTap: (){
//               Future.delayed(Duration(milliseconds: 500),(){
//                 Navigator.pushNamed(context, '/products_screen');
//               });
//
//             },
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         // offset: Offset(0, -15),
//                         blurRadius: 20,
//                         color: Color(0xFFDADADA).withOpacity(0.5),
//                       )
//                     ],
//                     color: Colors.white,
//                   ),
//                   child:Stack(
//                     children: [
//                       Center(child: Image.asset('images/bag.png',height:150,fit: BoxFit.fill,)),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//
//                         child:Align (
//                           alignment: Alignment.topRight,
//                           child: Container(
//                             width: 20,
//                             height: 20,
//                             child: Center(child: const Text('2',style: TextStyle(color: Colors.white),)),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),),
//                 SizedBox(height: 10,),
//                 Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold)),
//
//               ],
//             ),
//           ),
//           InkWell(
//             onTap: (){
//               Future.delayed(Duration(milliseconds: 500),(){
//                 Navigator.pushNamed(context, '/products_screen');
//               });
//
//             },
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         // offset: Offset(0, -15),
//                         blurRadius: 20,
//                         color: Color(0xFFDADADA).withOpacity(0.5),
//                       )
//                     ],
//                     color: Colors.white,
//                   ),
//                   child:Stack(
//                     children: [
//                       Center(child: Image.asset('images/bag.png',height:150,fit: BoxFit.fill,)),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//
//                         child:Align (
//                           alignment: Alignment.topRight,
//                           child: Container(
//                             width: 20,
//                             height: 20,
//                             child: Center(child: const Text('2',style: TextStyle(color: Colors.white),)),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),),
//                 SizedBox(height: 10,),
//                 Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold)),
//
//               ],
//             ),
//           ),
//           InkWell(
//             onTap: (){
//               Future.delayed(Duration(milliseconds: 500),(){
//                 Navigator.pushNamed(context, '/products_screen');
//               });
//
//             },
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         // offset: Offset(0, -15),
//                         blurRadius: 20,
//                         color: Color(0xFFDADADA).withOpacity(0.5),
//                       )
//                     ],
//                     color: Colors.white,
//                   ),
//                   child:Stack(
//                     children: [
//                       Center(child: Image.asset('images/bag.png',height:150,fit: BoxFit.fill,)),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//
//                         child:Align (
//                           alignment: Alignment.topRight,
//                           child: Container(
//                             width: 20,
//                             height: 20,
//                             child: Center(child: const Text('2',style: TextStyle(color: Colors.white),)),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),),
//                 SizedBox(height: 10,),
//                 Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold)),
//
//               ],
//             ),
//           ),
//           InkWell(
//             onTap: (){
//               Future.delayed(Duration(milliseconds: 500),(){
//                 Navigator.pushNamed(context, '/products_screen');
//               });
//
//             },
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         // offset: Offset(0, -15),
//                         blurRadius: 20,
//                         color: Color(0xFFDADADA).withOpacity(0.5),
//                       )
//                     ],
//                     color: Colors.white,
//                   ),
//                   child:Stack(
//                     children: [
//                       Center(child: Image.asset('images/bag.png',height:150,fit: BoxFit.fill,)),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//
//                         child:Align (
//                           alignment: Alignment.topRight,
//                           child: Container(
//                             width: 20,
//                             height: 20,
//                             child: Center(child: const Text('2',style: TextStyle(color: Colors.white),)),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),),
//                 SizedBox(height: 10,),
//                 Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold)),
//
//               ],
//             ),
//           ),
//
//         ],
//       ),
//
//     );
//   }
//
// }
