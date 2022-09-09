import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/core/product_details.dart';
import 'package:smart_stor/model/product.dart';
import 'package:smart_stor/model/product_details.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class productWidget extends StatefulWidget {

  final Product product;
  // final void Function() onTap;


  productWidget({required this.product});

  @override
  State<productWidget> createState() => _productWidgetState();
}

class _productWidgetState extends State<productWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      onTap: (){
        Get.to(()=>
            ProductDetailsScreen(id: widget.product.id!)
        );
      },

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Center(child: Image.network(widget.product.imageUrl!),),
                  Align (
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 40,
                      height: 40,
                      child: const Icon(Icons.favorite_outline, size: 20,color: Colors.red,),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align (
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 40,
                      height: 40,
                      child: const Icon(Icons.shopping_cart_outlined, size: 20,),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ),
          Padding(
            padding:  EdgeInsets.only(left: 5.w),
            child: Text(widget.product.nameEn!,style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 5.w),
            child: Row(
              children: [
                const Icon(Icons.star,     color: Colors.amber,size: 15,),
                const Icon(Icons.star,     color: Colors.amber,size: 15,),
                const Icon(Icons.star,     color: Colors.amber,size: 15,),
                const Icon(Icons.star,     color: Colors.amber,size: 15,),
                const Icon(Icons.star,     color: Colors.amber,size: 15,),
                // SizedBox(width: 20,),
                const Spacer(),
                const Text('(5.0)',style:TextStyle(fontSize: 10),),


              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 5.w),
            child: Text(widget.product.price.toString(),style: TextStyle(color: Colors.red),),
          )
        ],
      ),
    );
  }
}
