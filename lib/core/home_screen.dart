import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/widgets/home_section.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
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
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Home',style: GoogleFonts.nunito(fontSize: 22,fontWeight: FontWeight.bold),),
        ),

        centerTitle: true,
        // leading: Icon(Icons.menu),
        actions: [
           IconButton(icon:Icon(Icons.shopping_cart_sharp),onPressed: (){
            Navigator.pushNamed(context, '/cart_screen');
          },),
          const SizedBox(width: 10,),
          const Icon(Icons.notifications),
        ],

      ),
      drawer: Drawer(
        child: Column(
          children: [
            // const Spacer(),
            const Spacer(flex: 2,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                 const CircleAvatar(radius: 30, backgroundImage: AssetImage('images/profile.png')),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      const Text('Name'),
                      const Text('phone')
                    ],
                  )
                ],

              ),
            ),
            const Spacer(),

             ListTile(
              leading: IconButton(icon:Icon(Icons.shopping_cart_sharp),onPressed: (){
                Navigator.pushNamed(context, '/orders_screen');

              },),
              title: Text('Orders'),
              trailing:const Icon(Icons.arrow_left) ,
            ),
             ListTile(
              leading: IconButton(icon:Icon(Icons.notifications),onPressed: (){
                Navigator.pushNamed(context, '/notifications_screen');

              },),
              title: Text('Notifications'),
              trailing:const Icon(Icons.arrow_left) ,
            ),
             ListTile(
              leading: IconButton(icon:Icon(Icons.location_on),onPressed: (){
                Navigator.pushNamed(context, '/all_address_screen');

              },),
              title: Text('Addresses'),
              trailing:const Icon(Icons.arrow_left) ,
            ),
            ListTile(

              leading:  IconButton(icon:Icon(Icons.settings),onPressed: (){
                Navigator.pushNamed(context, '/setting_screen');

              },),
              title:  Text('Setting'),
              trailing: Icon(Icons.arrow_left) ,
            ),
            ListTile(

              leading:  IconButton(icon:Icon(Icons.help),onPressed: (){
                Navigator.pushNamed(context, '/setting_screen');

              },),
              title:  Text('Help'),
              trailing: Icon(Icons.arrow_left) ,
            ),
             Spacer(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text('Log Out',style: GoogleFonts.nunito(color:Colors.red),),
            ),
            const Spacer(),
            const Spacer(),



          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: [
          ConstrainedBox(constraints: const BoxConstraints(maxHeight: 150),
                child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                  onPageChanged: (int pageIndex) {},
                  children: [

                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),

                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),

                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),

                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),

                    ),

                  ],

          ),
          ),
          const SizedBox(height: 20,),
          HomeSection(title: 'Categories', onPressed: (){}),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 80),
            child: GridView(
              // itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                mainAxisExtent: 153,
                // childAspectRatio: 130 / 90,
              ),
              children: [
                // Image.asset('images/Group 36198.png',height: 100,)
                Image.asset('images/Fashion.png'),
                Image.asset('images/Furniture.png'),
                Image.asset('images/Shoes.png'),
                Image.asset('images/Accessories.png'),

              ],

            ),
          ),
          const SizedBox(height: 20,),
          HomeSection(title: 'Latest Products ', onPressed: (){}),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 275),
            child: GridView(
              // itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15,
                mainAxisExtent: 152,
                // childAspectRatio: 130 / 90,
              ),
              children: [
                // SizedBox(height: 10,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color(0XFFDEDEE0),
                     ),
                     child: Stack(
                       children: [
                         Center(child: Image.asset('images/Group 14.png')),
                         Padding(
                           padding: const EdgeInsets.all(8.0),

                           child:Align (
                             alignment: Alignment.topRight,
                             child: Container(
                               width: 40,
                               height: 40,
                               child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                               decoration: const BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),

                       ],
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
                       const Text('(5.0)',style:const TextStyle(fontSize: 10),),


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
                     child: Stack(
                       children: [
                         Center(child: Image.asset('images/Group 15.png')),
                         Padding(
                           padding: const EdgeInsets.all(8.0),

                           child:Align (
                             alignment: Alignment.topRight,
                             child: Container(
                               width: 40,
                               height: 40,
                               child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                               decoration: const BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),

                       ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 14.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                    const Text('60',style: TextStyle(color: Colors.red),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,


                  children: [
                    Container(
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0XFFDEDEE0),
                      ),
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                        const Text('(5.0)',style:TextStyle(fontSize: 10),),


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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                        const Text('(5.0)',style:TextStyle(fontSize: 10),),


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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                        const Text('(5.0)',style:TextStyle(fontSize: 10),),


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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                    const Text('60',style: TextStyle(color: Colors.red),)
                  ],
                ),


              ],
              // itemBuilder: (context, index) {
              //   return Container(
              //     color: Colors.black45,
              //   );
              // },
            ),
          ),
          const SizedBox(height: 20,),
          HomeSection(title: ' Products you may like ', onPressed: (){}),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 275),
            child: GridView(
              // itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15,
                mainAxisExtent: 152,
                // childAspectRatio: 130 / 90,
              ),
              children: [
                // SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0XFFDEDEE0),
                      ),
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 14.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 14.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                        const Text('(5.0)',style:TextStyle(fontSize: 10),),


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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                        const Text('(5.0)',style:TextStyle(fontSize: 10),),


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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                      child: Stack(
                        children: [
                          Center(child: Image.asset('images/Group 15.png')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),

                            child:Align (
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
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
                        const Text('(5.0)',style:TextStyle(fontSize: 10),),


                      ],
                    ),
                    const Text('60',style: const TextStyle(color: Colors.red),)
                  ],
                ),








              ],
              // itemBuilder: (context, index) {
              //   return Container(
              //     color: Colors.black45,
              //   );
              // },
            ),
          ),



        ],
      ),
    );
  }
}
