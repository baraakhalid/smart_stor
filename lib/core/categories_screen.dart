import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        scrollDirection:Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 200,
          // childAspectRatio: 100/150,

        ),
        children: [

          InkWell(
            onTap: (){
              Future.delayed(Duration(milliseconds: 500),(){
                Navigator.pushNamed(context, '/subcategories_screen');
              });

            },
            child: Column(
              children: [
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                color: Colors.white,
                  ),
                 child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('2',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
                SizedBox(height: 10,),
                Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold)),

              ],
            ),
          ),
          Column(
            children: [
              Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    // offset: Offset(0, -15),
                    blurRadius: 20,
                    color: Color(0xFFDADADA).withOpacity(0.5),
                  )
                ],
                ),
               child:Stack(
                children: [
                  Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child:Align (
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 20,
                        height: 20,
                        child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),

                ],
              ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, -15),
                      blurRadius: 20,
                      color: Color(0xFFDADADA).withOpacity(0.5),
                    )
                  ],
                ),
                child:Stack(
                  children: [
                    Center(child: Image.asset('images/bag.png',height: 150,fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child:Align (
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Center(child: const Text('0',style: TextStyle(color: Colors.white),)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),),
              SizedBox(height: 10,),
              Text('Bag',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),

            ],
          ),



        ],
      ),
    );
  }
}
