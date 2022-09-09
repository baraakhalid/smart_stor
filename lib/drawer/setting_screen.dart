import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:smart_stor/api/auth_api_controller.dart';
import 'package:smart_stor/get/language_getx_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/context_extenssion.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late String _language;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _language =
        SharedPrefController().getValueFor<String>(PrefKeys.language.name) ??
            'en';
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 40, backgroundImage: AssetImage('images/profile.png')),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                       Text(SharedPrefController()
                      .getValueFor<String>(PrefKeys.name.name)!,style:GoogleFonts.nunito(fontSize: 18)),
                       Text(SharedPrefController()
                           .getValueFor<String>(PrefKeys.mobile.name)!,style:GoogleFonts.nunito(fontSize: 14))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text(context.localizations.profile_setting,),
                  subtitle: Text(SharedPrefController()
                      .getValueFor<String>(PrefKeys.name.name)!,style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.person),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/profile_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: ()=>_showLangaugeBottomSheet(),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: ListTile(
                    title: Text(context.localizations.language_title),
                    subtitle:Text(SharedPrefController().getValueFor<String>(PrefKeys.language.name)=='ar'?' العربية' :'English'!,style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),

                      leading: IconButton(icon:Icon(Icons.language),color: Colors.black,onPressed: (){_showLangaugeBottomSheet();},),
                    trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text(context.localizations.edit_mobile),
                  subtitle: Text('Last update(1/1/2012)',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.phone_android_outlined,color: Colors.black),onPressed: (){
                    Navigator.pushNamed(context, '/edit_phone_screen_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text(context.localizations.change_pass),
                  subtitle: Text('Last update(1/1/2012)',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.password),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/reset_password_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text(context.localizations.contact_us),
                  leading: IconButton(icon:Icon(Icons.quick_contacts_dialer),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/contact_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('About Us'),
                  leading: IconButton(icon:Icon(Icons.info_outline),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/reset_password_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                child: ListTile(
                  leading:  IconButton(icon:Icon(Icons.logout),
                    onPressed: ()async {
                      ApiResponse apiResponse =await AuthApiController().logout();
                      if(apiResponse.success){
                        Navigator.pushReplacementNamed(context, '/login_screen');
                        context.ShowSnackBar(message: apiResponse.message ,error: !apiResponse.success );

                      }

                    },
                  ),
                  title: Text(context.localizations.logout,style: GoogleFonts.nunito(color:Colors.red),),
                ),
              ),
            ],
          ),
        ),
      ),



    );
  }
  void _showLangaugeBottomSheet() async {
    String? langCode = await showModalBottomSheet<String>(
        backgroundColor: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10))),
        context: context,
        builder: (context) {
          return (BottomSheet(
            backgroundColor: Colors.transparent,
            onClosing: () {},
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.language_title,
                          style: GoogleFonts.nunito(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          AppLocalizations.of(context)!.language_sub_title,
                          style: GoogleFonts.nunito(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45,
                              height: 1.0),
                        ),
                        const Divider(),
                        RadioListTile<String>(
                            title: Text(
                              'English',
                              style: GoogleFonts.nunito(),
                            ),
                            value: 'en',
                            groupValue: _language,
                            onChanged: (String? value) {
                              if (value != null) {
                                setState(() => _language = value);
                                Navigator.pop(context, 'en');
                              }
                            }),
                        RadioListTile<String>(
                            title: Text(
                              'العربية',
                              style: GoogleFonts.nunito(),
                            ),
                            value: 'ar',
                            groupValue: _language,
                            onChanged: (String? value) {
                              if (value != null) {
                                setState(() => _language = value);
                                Navigator.pop(context, 'ar');
                              }
                            }),

                        // RadioListTile<String>
                      ],
                    ),
                  );
                },
              );
            },
          ));
        });
    if (langCode != null) {
      Future.delayed(Duration(milliseconds: 500), () {
        LanguageGetxController.to.changeLanguage();
      });
    }
  }
   // void _confirmLogoutDialog() async{
   //   bool? result=await showDialog(context: context,
   //     barrierDismissible: false,
   //     builder: (context){
   //       return AlertDialog(
   //         title: Text(AppLocalizations.of(context)!.logout_title,
   //           style: GoogleFonts.cairo(fontSize: 16,color:Colors.black),),
   //         content: Text(AppLocalizations.of(context)!.logout_content,style: GoogleFonts.cairo(fontSize: 14,color:Colors.black45),),
   //         actions: [
   //           TextButton(onPressed: (){
   //             Navigator.pop(context);
   //
   //           },
   //               child: Text(AppLocalizations.of(context)!.cofirm,
   //                 style: GoogleFonts.cairo(color: Colors.red),)),
   //           TextButton(onPressed: (){
   //             Navigator.pop(context);
   //
   //           },
   //               child: Text(AppLocalizations.of(context)!.cancel,
   //                 style: GoogleFonts.cairo(),)),
   //         ],
   //       );
   //     },);
   //
   // }
   // void _showLanguageBottomSheet() async {
   //    showModalBottomSheet(
   //     shape: const RoundedRectangleBorder(
   //       borderRadius: BorderRadius.only(
   //         topLeft: Radius.circular(20),
   //         topRight: Radius.circular(20),
   //       ),
   //     ),
   //     backgroundColor: Colors.white,
   //     clipBehavior: Clip.antiAlias,
   //     context: context,
   //     builder: (context) {
   //       return BottomSheet(
   //         onClosing: () {},
   //         builder: (context) {
   //           return StatefulBuilder(
   //             builder: (context, setState) {
   //               return Column(
   //                 mainAxisSize: MainAxisSize.min,
   //                 crossAxisAlignment: CrossAxisAlignment.start,
   //                 children: [
   //                   Text(
   //                     AppLocalizations.of(context)!.language_title,
   //                     style: GoogleFonts.cairo(
   //                       fontSize: 14.sp,
   //                       color: Colors.black,
   //                       fontWeight: FontWeight.bold,
   //                     ),
   //                   ),
   //                   Text(
   //                     AppLocalizations.of(context)!.language_sub_title,
   //                     style: GoogleFonts.cairo(
   //                       fontSize: 14.sp,
   //                       color: Colors.black45,
   //                       height: 1.0,
   //                       fontWeight: FontWeight.w300,
   //                     ),
   //                   ),
   //                   Divider(),
   //                   RadioListTile<String>(
   //                     title: Text('English', style: GoogleFonts.cairo()),
   //                     value: 'en',
   //                     groupValue: _language,
   //                     onChanged: (String? value) {
   //                       if (value != null) {
   //                         setState(() => _language = value);
   //                         Navigator.pop(context, 'en');
   //                       }
   //                     },
   //                   ),
   //                   RadioListTile<String>(
   //                     title: Text('العربية', style: GoogleFonts.cairo()),
   //                     value: 'ar',
   //                     groupValue: _language,
   //                     onChanged: (String? value) {
   //                       if (value != null) {
   //                         setState(() => _language = value);
   //                         Navigator.pop(context, 'ar');
   //                       }
   //                     },
   //                   ),
   //                 ],
   //               );
   //             },
   //           );
   //         },
   //       );
   //     },
   //   );
   //
   //
   // }

}
