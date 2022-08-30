import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Wish list',style: GoogleFonts.nunito(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        centerTitle: true,

      ),
      body: ListView(
        children: [
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                       ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite2.png'),
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
                       ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite3.png'),
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
                       ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite4.png'),
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
                       ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite5.png'),
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
                       ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                        ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite2.png'),
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
                        ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite3.png'),
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
                        ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite4.png'),
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
                        ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),
          Container(
            height: 104,
            margin: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/favorite5.png'),
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
                        ' Color : White',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Text('60',style: TextStyle(fontSize: 20,color: Colors.red),)
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp,color: Colors.red,size: 26,))


              ],
            ),
          ),


        ],
      ),
    );
  }
}
