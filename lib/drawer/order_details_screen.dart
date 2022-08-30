import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders Details',style: GoogleFonts.nunito(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [

                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0,0),
                            blurRadius: 4
                        ),

                      ]
                  ),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/favorite1.png'),
                      ),
                      SizedBox(
                        width: 20,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'White Thobe',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              ' 2 items',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text('\$60',style: TextStyle(fontSize: 20,color: Colors.red),)
                          ],
                        ),
                      ),




                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            // height: 174,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xFFDADADA).withOpacity(0.15),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',style: GoogleFonts.nunito(fontWeight: FontWeight.bold,fontSize: 20),),
                    Spacer(),
                    Text('\$605',style: GoogleFonts.nunito(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),

                  ],
                ),

                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ID ORDER',style: GoogleFonts.nunito(color: Colors.black45),),
                    Spacer(),
                    Text('#3',style: GoogleFonts.nunito(color: Colors.black45),),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date ',style: GoogleFonts.nunito(color: Colors.black45),),
                    Spacer(),
                    Text('20 jan2021',style: GoogleFonts.nunito(color: Colors.black45),),

                  ],
                ),
                SizedBox(height: 10,),



              ],
            ),
          )
        ],
      ) ,

    );
  }
}
