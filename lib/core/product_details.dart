import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late PageController _pageController;
    String? _gender;
  int _selectedPageIndex = 0;

  final List<dynamic> _images=<dynamic>[
    Image.asset('images/Group 14.png'),
    Image.asset('images/Group 15.png'),
    Image.asset('images/Group 14.png'),
    Image.asset('images/Group 14.png'),
  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: AppBar(

       leading:Padding(
         padding: const EdgeInsets.only(left: 20,top: 20),
         child: Container(height: 40,width: 40,
             decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,),
             child: Center(
               child: IconButton(
                 icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},),
             )),
       ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14,top: 20,),
            child: Container(
              height: 40,width: 60,
              // padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(
                      '4.5',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.star,color: Colors.amber,),
                ],
              ),
            ),
          ),
        ],



      ),


      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: [
          ConstrainedBox(constraints: const BoxConstraints(maxHeight: 250),
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int pageIndex) {},
              children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset('images/favorite3.png',fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset('images/bag.png',fit: BoxFit.fill,),
                  ),

              ],

            ),
          ),
          Padding(
          padding:EdgeInsets.symmetric(horizontal: 20,),
             child: Text('Jacket Pullover Sweat Hoodie',style: GoogleFonts.nunito(fontSize: 16),),
            ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(15),
              width: 64,
              decoration: BoxDecoration(
                color:Color(0xFFFFE6E6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Icon(
                Icons.favorite_outline,
                color:Color(0xFFFF4848) ,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 64,
            ),
            child: Text(
              'description description description description descriptiondescription',style: TextStyle(fontWeight: FontWeight.w300),
              maxLines: 3,
            ),
          ),
          SizedBox(height: 25,),
          Text('Size'),
          Container(
            
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                   title: Text('XS',style: GoogleFonts.nunito(fontSize: 14),),
                   value: 'xs',
                   groupValue: _gender,
                      activeColor: Color(0xff7530FF),

                   onChanged: (String? value){
                   setState(() => _gender=value);
                   }
                 ),
               ),
                Expanded(
                  child: RadioListTile<String>
                    (
                      title: Text('S',style: GoogleFonts.nunito(fontSize: 14),),
                      value: 's',
                      groupValue: _gender,
                      activeColor: Color(0xff7530FF),
                      onChanged: (String? value){
                        setState(() => _gender=value);

                      }
                  ),
            ),
                Expanded(
                 child: RadioListTile<String>
                 (
                   title: Text('M',style: GoogleFonts.nunito(fontSize: 14),),
                   value: 'm',
                   groupValue: _gender,
                     activeColor: Color(0xff7530FF),
                   onChanged: (String? value){
                     setState(() => _gender=value);}
                                       ),
                                     ),
                Expanded(
                  child: RadioListTile<String>
                    (
                      title: Text('L',style: GoogleFonts.nunito(fontSize: 14),),
                      value: 'l',
                      groupValue: _gender,
                      activeColor: Color(0xff7530FF),
                      onChanged: (String? value){
                        setState(() => _gender=value);
                      }
                      ),
                ),



              ],
            ),
          ) ,
          SizedBox(height: 15,),
          Text('Colors'),
          SizedBox(height: 10,),
           Row(
              children: [
            Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
            color: Color(0xffFFC4C4),
            shape: BoxShape.circle,),),
                SizedBox(width: 10,),

                Container(
                  margin: EdgeInsets.only(right: 2),
                  padding: EdgeInsets.all(8),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Color(0xffEE6983),
                    shape: BoxShape.circle,),)
                      ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(325, 63.83),
                    primary: Color(0xff7530FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Text(
                  'Add To Cart',
                  style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                )),
          ),











        ],
      ),


    );
  }
}
