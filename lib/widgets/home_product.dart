import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_stor/model/product.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeProductWidget extends StatelessWidget {
  final Product product;
  final void Function() onTap;

  HomeProductWidget({required this.product, required this.onTap});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                height: 180.h,
                width: double.infinity,
                imageUrl: product.imageUrl!,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    // color: AppColors.PRIMARY_COLOR,
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.nameEn!,style: TextStyle( fontSize: 13.sp,
                        ),),
                      Text(product.price!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,),)
                      //   product.offerPrice == null
                      //       ? AppTextWidget(
                      //     content: '${product.price}\₪',
                      //     fontSize: 13.sp,
                      //     color: AppColors.PRIMARY_TEXT_COLOR,
                      //     fontWeight: FontWeight.bold,
                      //   )
                      //       : AppTextWidget(
                      //     content: '${product.price}\₪',
                      //     fontSize: 13.sp,
                      //     color: AppColors.PRIMARY_TEXT_COLOR,
                      //     fontWeight: FontWeight.bold,
                      //     textDecoration: TextDecoration.lineThrough,
                      //     decorationColor: Colors.red,
                      //   ),
                      // ],
                ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}