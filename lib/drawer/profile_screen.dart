import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/widgets/app_text_field.dart';
import 'package:smart_stor/widgets/app_text_field_cart.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController _nameTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController=TextEditingController();


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {Navigator.pop(context);},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () {

            },
          ),
          ],
      ),

        body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),

         child: ListView(
             children: [
               Text('Edit Profile',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
               SizedBox(height: 15,),
               Center(
                 child: Stack(
                   children: [
                     Container(
                       width: 130,
                       height: 130,
                       decoration: BoxDecoration(
                           border: Border.all(
                               width: 4,
                           color: Colors.white),
                         boxShadow: [
                           BoxShadow(
                            blurRadius: 10,
                               color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 10))
                         ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/profile.png'
                          ),
                      )),
              ),
                     Positioned(
                         bottom: 0,
                         right: 0,
                         child: Container(
                           height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(
                               width: 4,
                               color: Theme.of(context).scaffoldBackgroundColor,
                             ),
                             color: Color(0xffFF7750),
                           ),
                           child: Icon(
                             Icons.edit,
                             color: Colors.white,
                           ),
                         )),
                   ],
                 ),
               ),
               SizedBox(height: 50,),
               TextField(
                 keyboardType:TextInputType.text,
                 controller: _nameTextController,

                 decoration: InputDecoration(
                   hintText: 'Edit Name',
                   suffixIcon: Icon(Icons.edit,color: Colors.grey,),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(
                       color: Colors.grey,
                     ),

                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(
                       color: Colors.grey,
                     ),

                   ),


                 ),
               ),
               SizedBox(height: 70,),

               Row(
                 children: [
                   ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                           minimumSize: Size(150, 63.83),
                           primary: Colors.grey,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10))),
                       child: Text(
                         'Cansel',
                         style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                       ),
                   ),
                   Spacer(),
                   ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                           minimumSize: Size(150, 63.83),
                           primary: Color(0xffFF7750),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10))),
                       child: Text(
                         'Save Changes',
                         style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                       ),
                   ),
                 ],
               ),


             ],

        ),
















    ),

      // body: Column(
      //   children: [
      //
      //       Padding(
      //         padding: const EdgeInsets.only(right: 10),
      //         child: Align(
      //           alignment: Alignment.topRight,
      //           child: CircleAvatar(
      //             backgroundColor: Colors.black54,
      //             child: IconButton(icon: Icon(Icons.edit),onPressed: (){},),
      //           ),
      //         ),
      //       ),
      //       Container(
      //           padding: EdgeInsets.all(10.0),
      //           width: MediaQuery.of(context).size.width/2,
      //           height: MediaQuery.of(context).size.width/2,
      //           decoration: BoxDecoration(
      //             border: Border.all(color: Colors.white,width: 5),
      //             shape: BoxShape.circle,
      //               color: Colors.white,
      //           image: DecorationImage(
      //               image: AssetImage('images/profile.png'),
      //             fit: BoxFit.cover,
      //           )
      //           // image: AssetImage('images/profile.png')
      //           ),),
      //
      //       SizedBox(height: 20,),
      //      Padding(
      //        padding: const EdgeInsets.symmetric(horizontal: 20),
      //        child: TextField(
      //         decoration: InputDecoration(
      //             hintText: ('Full Name'),
      //            suffixIcon: Icon(Icons.edit),
      //           hintStyle: TextStyle(
      //               letterSpacing: 2,
      //               color: Colors.black54,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             fillColor: Colors.white,
      //             filled: true,
      //           enabledBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(10),
      //             borderSide: BorderSide(
      //               color: Colors.grey.shade700,
      //               width: 1,
      //             ),
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(10),
      //             borderSide: BorderSide(
      //               color: Colors.blue.shade300,
      //               width: 1,
      //             ),
      //           ),
      //         ),
      //
      //     ),
      //      ),
      //     SizedBox(height: 20,),
      //
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           hintText: ('Password'),
      //           suffixIcon: Icon(Icons.edit),
      //
      //           hintStyle: TextStyle(
      //             letterSpacing: 2,
      //             color: Colors.black54,
      //             fontWeight: FontWeight.bold,
      //           ),
      //           fillColor: Colors.white,
      //           filled: true,
      //           enabledBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(10),
      //             borderSide: BorderSide(
      //               color: Colors.grey.shade700,
      //               width: 1,
      //             ),
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(10),
      //             borderSide: BorderSide(
      //               color: Colors.pink.shade300,
      //               width: 1,
      //             ),
      //           ),
      //         ),
      //
      //       ),
      //     ),
      //     Spacer(),
      //     ElevatedButton(
      //         onPressed: () {
      //
      //           Navigator.pushReplacementNamed(context, '/bottom_screen');
      //
      //         },
      //         style: ElevatedButton.styleFrom(
      //             minimumSize: Size(325, 63.83),
      //             primary: Color(0xff586BCA),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(16))),
      //         child: Text(
      //           'Save Changes',
      //           style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
      //         )),
      //     Spacer(),
      //
      //
      //
      //     //   Container(
      //     //   padding: EdgeInsets.all(10.0),
      //     //   width: double.infinity,
      //     //   height: 100,
      //     //   decoration: BoxDecoration(
      //     //     borderRadius: BorderRadius.circular(10),
      //     //       border: Border.all(color: Colors.white,width: 5),
      //     //       color: Colors.black12,
      //     //   ),
      //     //     child: Column(
      //     //       mainAxisAlignment: MainAxisAlignment.center,
      //     //       children: [
      //     //         Text('Full Name',style:GoogleFonts.nunito() ,),
      //     //         Row(
      //     //           // mainAxisAlignment: MainAxisAlignment.center,
      //     //           children: [
      //     //             Text('Full Name',style:GoogleFonts.nunito(fontWeight: FontWeight.bold)),
      //     //            Spacer(),
      //     //            IconButton(onPressed: (){}, icon:Icon(Icons.mode_edit_outline_outlined)),
      //     //
      //     //
      //     //
      //     //           ],
      //     //         )
      //     //       ],
      //     //     ),
      //     //   ),
      //     // Container(
      //     //   padding: EdgeInsets.all(10.0),
      //     //   width: double.infinity,
      //     //   height: 100,
      //     //   decoration: BoxDecoration(
      //     //     borderRadius: BorderRadius.circular(10),
      //     //     border: Border.all(color: Colors.white,width: 5),
      //     //     color: Colors.black12,
      //     //   ),
      //     //   child: Column(
      //     //     mainAxisAlignment: MainAxisAlignment.center,
      //     //     children: [
      //     //       Text('Full Name',style:GoogleFonts.nunito() ,),
      //     //       Row(
      //     //         // mainAxisAlignment: MainAxisAlignment.center,
      //     //         children: [
      //     //           Text('Full Name',style:GoogleFonts.nunito(fontWeight: FontWeight.bold)),
      //     //           Spacer(),
      //     //           IconButton(onPressed: (){}, icon:Icon(Icons.mode_edit_outline_outlined)),
      //     //
      //     //
      //     //
      //     //         ],
      //     //       )
      //     //     ],
      //     //   ),
      //     // ),
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //     // Stack(
      //     //   alignment: Alignment.center,
      //     //   children: [
      //     //     Center(
      //     //       child: Column(
      //     //         crossAxisAlignment: CrossAxisAlignment.center,
      //     //         children: [
      //     //           Text('Profile',style: GoogleFonts.nunito(fontSize: 35,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
      //     //           Container(
      //     //             padding: EdgeInsets.all(10.0),
      //     //             width: MediaQuery.of(context).size.width/2,
      //     //             height: MediaQuery.of(context).size.width/2,
      //     //             decoration: BoxDecoration(
      //     //               border: Border.all(color: Colors.white,width: 5),
      //     //               shape: BoxShape.circle,
      //     //                 color: Colors.white,
      //     //             image: DecorationImage(
      //     //                 image: AssetImage('images/profile.png'),
      //     //               fit: BoxFit.cover,
      //     //             )
      //     //             // image: AssetImage('images/profile.png')
      //     //             ),
      //     //           )
      //     //         ],
      //     //       ),
      //     //     ),
      //     //     Padding(padding: EdgeInsets.only(bottom: 350,left: 250,right: 70),
      //     //       child: CircleAvatar(
      //     //         backgroundColor: Colors.black54,
      //     //         child: IconButton(icon: Icon(Icons.edit),onPressed: (){},),
      //     //       ),
      //     //
      //     //
      //     //
      //     //
      //     //     ),
      //     //
      //     //
      //     //
      //     //   ],
      //     //
      //     // ),
      //     // Column(
      //     //   mainAxisAlignment: MainAxisAlignment.end,
      //     //   children: [
      //     //     Container(
      //     //       // height: 450,
      //     //       width: double.infinity,
      //     //       color: Colors.black54,
      //     //       margin: EdgeInsets.symmetric(horizontal: 10),
      //     //       child: Column(
      //     //         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     //         children: [
      //     //           Text('Full Name'),
      //     //           Row(
      //     //             mainAxisAlignment: MainAxisAlignment.center,
      //     //             children: [
      //     //               Spacer(flex: 2,),
      //     //
      //     //               Text('Baraa Turban'),
      //     //               Spacer(flex: 1,),
      //     //
      //     //               IconButton(onPressed: (){}, icon:Icon(Icons.mode_edit_outline_outlined)),
      //     //             ],
      //     //           ),
      //     //
      //     //
      //     //
      //     //         ],
      //     //       ),
      //     //     ),
      //     //   ],
      //     // ),
      //
      //   ],
      // ),
    );
  }
}
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   late TextEditingController nameController;
//   City? city;
//   bool isMale = SharedPreferencesController().user!.gender == 'M'? true: false;
//
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: SharedPreferencesController().user!.name);
//   }
//
//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         titleTextStyle: TextStyle(color: Colors.white),
//         title: AppTextWidget(content: 'Profile'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(32.h),
//           child: Column(
//             children: [
//               SizedBox(height: 30.h),
//               SvgPicture.asset(
//                 'assets/svg/logo_blue.svg',
//                 height: 83.h,
//                 width: 61.w,
//               ),
//               SizedBox(height: 80.h),
//               AppTextField(
//                 controller: nameController,
//                 label: 'Name',
//               ),
//               SizedBox(height: 20.h),
//               GestureDetector(
//                 onTap: () async {
//                   City selectedCity = await Get.to(CitiesScreen());
//                   setState(() {
//                     city = selectedCity;
//                   });
//                 },
//                 child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 28.w),
//                     alignment: AlignmentDirectional.centerStart,
//                     height: 50.h,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                             color: Color(0xFF999999).withAlpha(25),
//                             offset: Offset(0, 5),
//                             blurRadius: 10,
//                             spreadRadius: 0)
//                       ],
//                       borderRadius: BorderRadius.circular(50.h),
//                       border: Border.all(color: Colors.grey),),
//                     child: getCityName()),
//               ),
//               SizedBox(height: 20.h),
//               Row(
//                 children: [
//                   Expanded(
//                     child: CheckboxListTile(
//                       checkColor: Colors.white,
//                       activeColor: AppColors.PRIMARY_COLOR,
//                       value: isMale,
//                       onChanged: (var selected) {
//                         setState(() {
//                           isMale = true;
//                         });
//                       },
//                       title: Text('Male'),
//                     ),
//                   ),
//                   VerticalDivider(
//                     color: Colors.red,
//                     width: 40.w,
//                     thickness: 5.h,
//                   ),
//                   Expanded(
//                     child: CheckboxListTile(
//                       checkColor: Colors.white,
//                       activeColor: AppColors.PRIMARY_COLOR,
//                       value: !isMale,
//                       onChanged: (var selected) {
//                         setState(() {
//                           isMale = false;
//                         });
//                       },
//                       title: Text('Female'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 42.h),
//               AppElevatedButton(text: 'Update', onPressed: () async {
//                 await performRegister();
//               }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget getCityName() {
//     if (city == null) {
//       return AppTextWidget(
//         content: CitiesGetxController.to.getCityNameById(id: SharedPreferencesController().user!.cityId),
//         color: Colors.grey,
//       );
//     } else {
//       if (SharedPreferencesController().languageCode == 'ar') {
//         return AppTextWidget(
//           content: city!.nameAr,
//           color: Colors.black,
//         );
//       } else {
//         return AppTextWidget(
//           content: city!.nameEn,
//           color: Colors.black,
//         );
//       }
//     }
//   }
//
//
//   Future<void> performRegister() async {
//     if (checkData()) {
//       update();
//     }
//   }
//
//   bool checkData() {
//     if (nameController.text.isNotEmpty) {
//       return true;
//     }
//     else{
//       Helper.showSnackBar(context, text: 'complete fields', error: true);
//       return false;
//     }
//   }
//
//   Future<void> update() async {
//     bool status = await UsersGetxController.to.updateProfile(context: context, name: nameController.text, gender: isMale?'M':'F', city: city == null ? SharedPreferencesController().user!.cityId : city!.id);
//     if(status){
//       await SharedPrefController().setCityId(city == null ? SharedPrefController().user!.cityId: city!.id);
//       await SharedPrefController().setName(nameController.text);
//       await SharedPrefController().setGender(isMale?'M':'F');
//     }
//   }
//
// }
