import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        scrollDirection:Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 275,

        ),
        children: [
          InkWell(
            onTap: (){
              Future.delayed(Duration(milliseconds: 500),(){
                Navigator.pushNamed(context, '/product_details_screen');
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0XFFDEDEE0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Center(child: Image.asset('images/Group 14.png')),
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
                Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

                Row(
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
                const Text('60',style: TextStyle(color: Colors.red),)
              ],
            ),
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 15.png')),
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
              Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  // SizedBox(width: 20,),
                  const Spacer(),
                  const Text('(5.0)',style:const TextStyle(fontSize: 10),),


                ],
              ),
              const Text('60',style: const TextStyle(color: Colors.red),)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 14.png')),
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
              Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

              Row(
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
              const Text('60',style: TextStyle(color: Colors.red),)
            ],
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 15.png')),
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
              Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  // SizedBox(width: 20,),
                  const Spacer(),
                  const Text('(5.0)',style:const TextStyle(fontSize: 10),),


                ],
              ),
              const Text('60',style: const TextStyle(color: Colors.red),)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 14.png')),
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
              Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

              Row(
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
              const Text('60',style: TextStyle(color: Colors.red),)
            ],
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 15.png')),
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
              Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  // SizedBox(width: 20,),
                  const Spacer(),
                  const Text('(5.0)',style:const TextStyle(fontSize: 10),),


                ],
              ),
              const Text('60',style: const TextStyle(color: Colors.red),)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 14.png')),
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
              Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

              Row(
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
              const Text('60',style: TextStyle(color: Colors.red),)
            ],
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFDEDEE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/Group 15.png')),
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
              Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  const Icon(Icons.star,     color: Colors.amber,size: 15,),
                  // SizedBox(width: 20,),
                  const Spacer(),
                  const Text('(5.0)',style:const TextStyle(fontSize: 10),),


                ],
              ),
              const Text('60',style: const TextStyle(color: Colors.red),)
            ],
          ),






        ],
      ),
    );
  }
}
