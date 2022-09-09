import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_stor/model/cart.dart';
import 'package:smart_stor/widgets/app_text.dart';
import 'package:smart_stor/widgets/app_text_field_product.dart';
class ProductCartWidget extends StatelessWidget {
  final Cart cartItem;
  final void Function() onTap;

  ProductCartWidget({required this.cartItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(15.h),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.h),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 3),
                blurRadius: 5,
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              CachedNetworkImage(
                height: 150.h,
                width: 120.w,
                imageUrl: cartItem.productImage,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    // color: AppColors.PRIMARY_COLOR,
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextFieldProduct(
                    content: 'Price For 1 Pic : ${cartItem.price}',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8.h),
                  AppTextFieldProduct(
                    content: 'Quantity: ${cartItem.count} pic',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8.h),
                  AppTextFieldProduct(
                    content: 'Total Price: : ${cartItem.price * cartItem.count}',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              )
            ],
          ),
        ),
        PositionedDirectional(
          top: 15.h,
          end: 15.w,
          child: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.delete,
              color: Colors.red.shade900,
              size: 30.h,
            ),
          ),
        ),
      ],
    );
  }
}