import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 115,
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5),
                child: Image.asset('images/image_1o.png'),
              ),
              SizedBox(
                width: 5,

              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order #',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      ' payment: Cash',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                    Text('20 jan 2021',style: TextStyle(color: Colors.black45),),

                    Text('\$650',style: TextStyle(fontSize: 20,color: Colors.red),),

                  ],
                ),
              ),
              Spacer(),
              // SizedBox(width: 15,),

              IconButton(onPressed: (){
                Navigator.pushNamed(context, '/order_details_screen');
              }, icon: Icon(Icons.arrow_forward_ios)),


            ],
          ),
        ),
        Container(
          height: 115,
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5),
                child: Image.asset('images/image_1o.png'),
              ),
              SizedBox(
                width: 5,

              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order #',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      ' payment: Cash',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                    Text('20 jan 2021',style: TextStyle(color: Colors.black45),),

                    Text('\$650',style: TextStyle(fontSize: 20,color: Colors.red),),

                  ],
                ),
              ),
              Spacer(),
              // SizedBox(width: 15,),

              IconButton(onPressed: (){
                Navigator.pushNamed(context, '/order_details_screen');
              }, icon: Icon(Icons.arrow_forward_ios)),


            ],
          ),
        ),
        Container(
          height: 115,
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5),
                child: Image.asset('images/image_1o.png'),
              ),
              SizedBox(
                width: 5,

              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order #',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      ' payment: Cash',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                    Text('20 jan 2021',style: TextStyle(color: Colors.black45),),

                    Text('\$650',style: TextStyle(fontSize: 20,color: Colors.red),),

                  ],
                ),
              ),
              Spacer(),
              // SizedBox(width: 15,),

              IconButton(onPressed: (){
                Navigator.pushNamed(context, '/order_details_screen');
              }, icon: Icon(Icons.arrow_forward_ios)),


            ],
          ),
        ),




      ],
    );

  }
}
