import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/api/store_api_controller.dart';
import 'package:smart_stor/core/sub_categories_screen.dart';
import 'package:smart_stor/get/categories_getx_controller.dart';
import 'package:smart_stor/model/category.dart';
import 'package:smart_stor/widgets/category_widget.dart';
class CategoriesScreen extends StatelessWidget {
  CategoryGetxController controller = Get.put(CategoryGetxController());

  CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
      ),
      body: GetX<CategoryGetxController>(
          builder: (CategoryGetxController controller) {
            return controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : controller.categories.isNotEmpty
                ? ListView.builder(
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 100.h,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: 15.w, right: 15.w, top: 15.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 0),
                              blurRadius: 4
                          ),

                        ],),
                      child: CategoryWidget(
                        category: controller.categories[index],
                        onTap: () => Get.to(SubCategoriesScreen(
                              id: controller.categories[index].id),
                        ),
                      )

                  );
                }
            )
                : Center(child: Text('No Data',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),));

            //   FutureBuilder<List<Categories>>(
            //   future:StoreApiController().getCategories() ,
            //   builder: (context,snapshot){
            //     if(snapshot.connectionState == ConnectionState.waiting){
            //       return Center(child: CircularProgressIndicator(),);
            //     }
            //     else if(snapshot.hasData && snapshot.data!.isNotEmpty){
            //       return ListView.builder(
            //         itemCount:snapshot.data!.length ,
            //         itemBuilder: (context, index) {
            //           return  Container(
            //             height: 80.h,
            //             width: double.infinity,
            //             margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 15.h),
            //
            //             decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(20.r),
            //                 boxShadow: [
            //                   BoxShadow(
            //                       color: Colors.black38,
            //                       offset: Offset(0,0),
            //                       blurRadius: 4
            //                   ),
            //
            //                 ]
            //             ),
            //             child: ListTile(
            //
            //               onTap: () {
            //                 Get.to(() => SubCategoriesScreen(
            //                     id: controller.categories[index].id));
            //               },
            //
            //               leading: Image(
            //                 width: 100,
            //                 height: 100,
            //                 image: NetworkImage( snapshot.data![index].imageUrl),
            //                 fit: BoxFit.fill
            //                 ,
            //               ),
            //               title: Text(snapshot.data![index].nameEn,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16.sp),),
            //               subtitle: Column(
            //                 children: [
            //                   Row(
            //                     children: [
            //                       Text(snapshot.data![index].subCategoriesCount),
            //                       SizedBox(width: 15,),
            //                       Text('subCategories'),
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [
            //                       Text(snapshot.data![index].productsCount),
            //                       SizedBox(width: 15,),
            //
            //                       Text('Products'),
            //                     ],
            //                   ),
            //
            //                 ],
            //               ),
            //               trailing: Padding(
            //                 padding:  EdgeInsets.only(top:20.h),
            //                 child: const Icon(
            //                   Icons.arrow_forward_ios_sharp,
            //                   size: 20,
            //
            //                 ),
            //               ),
            //
            //             ),
            //           );
            //
            //         },
            //
            //       );
            //     }
            //     else {
            //       return Center(child: Text('NO DATA',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
            //       );
            //     }
            //
            //   },
            // );


            // body: GridView(
            //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            //   scrollDirection:Axis.vertical,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 10,
            //     mainAxisExtent: 200,
            //     // childAspectRatio: 100/150,
            //
            //   ),
            //   children: [
            //
            //     InkWell(
            //       onTap: (){
            //         Future.delayed(Duration(milliseconds: 500),(){
            //           Navigator.pushNamed(context, '/subcategories_screen');
            //         });
            //
            //       },
            //       child: Column(
            //         children: [
            //           Container(
            //           decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           color: Colors.white,
            //             ),
            //            child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png')),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('2',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //           SizedBox(height: 10,),
            //           Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold)),
            //
            //         ],
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //         decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //               // offset: Offset(0, -15),
            //               blurRadius: 20,
            //               color: Color(0xFFDADADA).withOpacity(0.5),
            //             )
            //           ],
            //           ),
            //          child:Stack(
            //           children: [
            //             Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //
            //               child:Align (
            //                 alignment: Alignment.topRight,
            //                 child: Container(
            //                   width: 20,
            //                   height: 20,
            //                   child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                   decoration: const BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     color: Colors.red,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //
            //           ],
            //         ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 // offset: Offset(0, -15),
            //                 blurRadius: 20,
            //                 color: Color(0xFFDADADA).withOpacity(0.5),
            //               )
            //             ],
            //           ),
            //           child:Stack(
            //             children: [
            //               Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //
            //                 child:Align (
            //                   alignment: Alignment.topRight,
            //                   child: Container(
            //                     width: 20,
            //                     height: 20,
            //                     child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
            //                     decoration: const BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //
            //             ],
            //           ),),
            //         SizedBox(height: 10,),
            //         Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
            //
            //       ],
            //     ),
            //
            //
            //
            //   ],
            // ),

          }
      ),
    );
  }
}
