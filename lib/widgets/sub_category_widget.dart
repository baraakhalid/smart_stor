import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/model/subCategory.dart';
class SubCategoryWidget extends StatelessWidget {
  final SubCategory subCategory;
  final void Function() onTap;

  SubCategoryWidget({required this.subCategory,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.h)),
        elevation: 3,
        child: Column(

          // crossAxisAlignment: CrossAxisAlignment.center,
          // children: [
          //   Padding(
          //     padding: EdgeInsets.all(8.h),
          //     child: Image(width: double.infinity,height: 100.h,  image: NetworkImage(subCategory.imageUrl),
          //         fit: BoxFit.fill
          //     )
          //   ),
          //   Text(
          //      subCategory.nameEn,style: GoogleFonts.poppins(
          //     fontSize: 15.sp,
          //     fontWeight: FontWeight.w600,
          //   ),
          //
          //   ),
          children: [
          Container(
                  decoration: BoxDecoration(
                   color: Colors.white,

                 borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                        // offset: Offset(0, -15),
                        blurRadius: 20,
                        color: Color(0xFFDADADA).withOpacity(0.5),
                      )],
                  ),
                  child:Stack(
                    children: [
                      Image  (width: double.infinity,height: 165.h,fit :BoxFit.cover,image: NetworkImage(subCategory.imageUrl)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        child:Align (
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 20,
                            height: 20,
                            child: Center(child: Text(subCategory.productsCount!,style: TextStyle(color: Colors.white),)),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),




          ],
        ),
      ),
            Text(
              subCategory.nameEn,style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),

            ),
    ],
    ),
      ),
    );

  }
}
