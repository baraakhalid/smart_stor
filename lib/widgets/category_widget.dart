import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/core/sub_categories_screen.dart';
import 'package:smart_stor/model/category.dart';
import 'package:smart_stor/widgets/home_category.dart';
class CategoryWidget extends StatelessWidget {
  final void Function() onTap;
  final Categories category;


  CategoryWidget({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        onTap: onTap,
        leading: Image(
          width: 100,
          height: double.infinity,
          image: NetworkImage( category.imageUrl),
          fit: BoxFit.fill
          ,
        ),
        title: Text(category.nameEn,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16.sp),),
        subtitle: Column(
          children: [
            Row(
              children: [
                Text(category.subCategoriesCount),
                SizedBox(width: 15,),
                Text('subCategories'),
              ],
            ),
            Row(
              children: [
                Text(category.productsCount),
                SizedBox(width: 15,),

                Text('Products'),
              ],
            ),

          ],
        ),
        trailing: Padding(
          padding:  EdgeInsets.only(top:20.h),
          child: const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 20,

          ),
        ),

      ),
    );
  }
}
