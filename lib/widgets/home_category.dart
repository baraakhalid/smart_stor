import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_stor/model/home.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeCategoryWidget extends StatelessWidget {
  final Categories category;
  final void Function() onTap;

  HomeCategoryWidget({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,

      child: GestureDetector(
        onTap: onTap,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.h),
                child: CachedNetworkImage(
                  height: 172.h,
                  width: double.infinity,
                  imageUrl: category.imageUrl,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      // color: AppColors.PRIMARY_COLOR,
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(category.nameEn,style: TextStyle(
                fontSize: 15.sp,
                // color: AppColors.PRIMARY_TEXT_COLOR,
                fontWeight: FontWeight.w600,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}