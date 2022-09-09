import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/api/auth_api_controller.dart';
import 'package:smart_stor/core/categories_screen.dart';
import 'package:smart_stor/core/product_details.dart';
import 'package:smart_stor/core/products_screen.dart';
import 'package:smart_stor/core/sub_categories_screen.dart';
import 'package:smart_stor/get/home_getx_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/home.dart';
import 'package:smart_stor/util/context_extenssion.dart';
import 'package:smart_stor/widgets/home_category.dart';
import 'package:smart_stor/widgets/home_product.dart';
import 'package:smart_stor/widgets/home_section.dart';
import 'package:smart_stor/widgets/product_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeGetxController controller = Get.put(HomeGetxController());
  // UsersGetxController usersController = Get.put(UsersGetxController());
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
          child: Text(context.localizations.home,style: GoogleFonts.nunito(fontSize: 22,fontWeight: FontWeight.bold),),
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
              leading:  IconButton(icon:Icon(Icons.logout),
                onPressed: ()async {
                  ApiResponse apiResponse =await AuthApiController().logout();
                  if(apiResponse.success){
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  }
                },
              ),
              title: Text('Log Out',style: GoogleFonts.nunito(color:Colors.red),),
            ),
            const Spacer(),
            const Spacer(),



          ],
        ),
      ),
      body:GetBuilder<HomeGetxController>(
          builder: (HomeGetxController controller){
      return controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : controller.home != null
          ? ListView(
          children: [
            SizedBox(
        height: 200.h,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 250.h,
            initialPage: 0,

            enableInfiniteScroll: true,
            reverse: false,

            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: controller.home!.slider.map((MySlider slider) {
            return Builder(
              builder: (BuildContext context) {
                return CachedNetworkImage(
                  height: 200.h,
                  width: double.infinity,


                  imageUrl: slider.imageUrl,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      // color: AppColors.PRIMARY_COLOR,
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                );
              },
            );
          }).toList(),
        ),
      ),
             Padding(
               padding: EdgeInsets.only(top: 25.h, bottom: 10.h, left: 10.w, right: 10.w,),
               child: HomeSection(title: context.localizations.category, onPressed: (){
                 Get.to(CategoriesScreen());
               }),
             ),
            SizedBox(
              height: 235.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.home!.categories.length!,
                itemBuilder: (context, index) {
                  return HomeCategoryWidget(
                    category: controller.home!.categories[index]!,
                    onTap: () => Get.to(SubCategoriesScreen(
                        id: controller.home!.categories[index].id)),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 10.w, right: 10.w,),
              child: HomeSection(title: context.localizations.latest_product, onPressed: (){
                // Get.to(ProductDetailsScreen(id:controller.home!.latestProducts[index].id!);
              }),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 250),
              child: GridView.builder(
                itemCount: controller.home!.latestProducts.length!,
                 scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
               mainAxisSpacing: 15,
                  mainAxisExtent: 152,
                 childAspectRatio: 130 / 90,
               ),
                itemBuilder: (context, index){
                  return
                    productWidget(product: controller.home!.latestProducts[index]!,

                    );
                },
              ),

            ),
            Padding(
              padding: EdgeInsets.only( bottom: 10.h, left: 10.w, right: 10.w,),
              child: HomeSection(title: context.localizations.may_like, onPressed: (){
                // Get.to(ProductDetailsScreen(id:controller.home!.latestProducts[index].id!);
              }),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 250),
              child: GridView.builder(
                itemCount: controller.home!.latestProducts.length!,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 152,
                  childAspectRatio: 130 / 90,
                ),
                itemBuilder: (context, index){
                  return
                    productWidget(product: controller.home!.latestProducts[index]!,

                    );
                },
              ),

            )

          ],
      )
          :Center(child: Text('error'),);





      }
      )
    );
  }
}
// ListView(
// padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
// children: [
// ConstrainedBox(constraints: const BoxConstraints(maxHeight: 150),
// child: PageView(
// controller: _pageController,
// scrollDirection: Axis.horizontal,
// onPageChanged: (int pageIndex) {},
// children: [
//
// Container(
// padding: const EdgeInsets.only(right: 10),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
//
// ),
// child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),
//
// ),
// Container(
// padding: const EdgeInsets.only(right: 10),
//
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20)
// ),
// child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),
//
// ),
// Container(
// padding: const EdgeInsets.only(right: 10),
//
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20)
// ),
// child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),
//
// ),
// Container(
// padding: const EdgeInsets.only(right: 10),
//
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20)
// ),
// child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),
//
// ),
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20)
// ),
// child:  Image.asset('images/Fashion.png',fit: BoxFit.fill,),
//
// ),
//
// ],
//
// ),
// ),
// const SizedBox(height: 20,),
// HomeSection(title: 'Categories', onPressed: (){}),
// ConstrainedBox(
// constraints: const BoxConstraints(maxHeight: 80),
// child: GridView(
// // itemCount: 10,
// scrollDirection: Axis.horizontal,
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1,
// mainAxisSpacing: 10,
// mainAxisExtent: 153,
// // childAspectRatio: 130 / 90,
// ),
// children: [
// // Image.asset('images/Group 36198.png',height: 100,)
// Image.asset('images/Fashion.png'),
// Image.asset('images/Furniture.png'),
// Image.asset('images/Shoes.png'),
// Image.asset('images/Accessories.png'),
//
// ],
//
// ),
// ),
// const SizedBox(height: 20,),
// HomeSection(title: 'Latest Products ', onPressed: (){}),
// ConstrainedBox(
// constraints: const BoxConstraints(maxHeight: 275),
// child: GridView(
// // itemCount: 10,
// scrollDirection: Axis.horizontal,
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1,
// mainAxisSpacing: 15,
// mainAxisExtent: 152,
// // childAspectRatio: 130 / 90,
// ),
// children: [
// // SizedBox(height: 10,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 14.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
//
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 14.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
//
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
//
//
// children: [
// Container(
// alignment: AlignmentDirectional.center,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
//
//
// ],
// // itemBuilder: (context, index) {
// //   return Container(
// //     color: Colors.black45,
// //   );
// // },
// ),
// ),
// const SizedBox(height: 20,),
// HomeSection(title: ' Products you may like ', onPressed: (){}),
// ConstrainedBox(
// constraints: const BoxConstraints(maxHeight: 275),
// child: GridView(
// // itemCount: 10,
// scrollDirection: Axis.horizontal,
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1,
// mainAxisSpacing: 15,
// mainAxisExtent: 152,
// // childAspectRatio: 130 / 90,
// ),
// children: [
// // SizedBox(height: 10,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 14.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
//
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 14.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Nike Jordan 1 Retro Yellow',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
//
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:const TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: TextStyle(color: Colors.red),)
// ],
// ),
// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: const Color(0XFFDEDEE0),
// ),
// child: Stack(
// children: [
// Center(child: Image.asset('images/Group 15.png')),
// Padding(
// padding: const EdgeInsets.all(8.0),
//
// child:Align (
// alignment: Alignment.topRight,
// child: Container(
// width: 40,
// height: 40,
// child: const Icon(Icons.favorite, size: 20,color: Colors.red,),
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// ),
// ),
// ),
// ),
//
// ],
// ),
//
// ),
// Text('Jacket Pullover SweatHoodie',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.bold),),
// Row(
// children: [
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// const Icon(Icons.star,     color: Colors.amber,size: 15,),
// // SizedBox(width: 20,),
// const Spacer(),
// const Text('(5.0)',style:TextStyle(fontSize: 10),),
//
//
// ],
// ),
// const Text('60',style: const TextStyle(color: Colors.red),)
// ],
// ),
//
//
//
//
//
//
//
//
// ],
// // itemBuilder: (context, index) {
// //   return Container(
// //     color: Colors.black45,
// //   );
// // },
// ),
// ),
//
//
//
// ],
// ),