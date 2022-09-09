import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/auth/forget_password_screen.dart';
import 'package:smart_stor/auth/login_screen.dart';
import 'package:smart_stor/auth/register_screen.dart';
import 'package:smart_stor/auth/register_success.dart';
import 'package:smart_stor/auth/reset_password.dart';
import 'package:smart_stor/core/address_screen.dart';
import 'package:smart_stor/core/bottom_navigation_screen.dart';
import 'package:smart_stor/core/cart_screen.dart';
import 'package:smart_stor/core/categories_screen.dart';
import 'package:smart_stor/core/credit_card.dart';
import 'package:smart_stor/core/deliverydetails.dart';
import 'package:smart_stor/core/edit_phone_number.dart';
import 'package:smart_stor/core/home_screen.dart';
import 'package:smart_stor/core/contact_us.dart';
import 'package:smart_stor/core/product_details.dart';
import 'package:smart_stor/core/products_screen.dart';
import 'package:smart_stor/core/sub_categories_screen.dart';
import 'package:smart_stor/database/db_controller.dart';
import 'package:smart_stor/drawer/all_address_screen.dart';
import 'package:smart_stor/drawer/notification_screen.dart';
import 'package:smart_stor/drawer/odrers_screen.dart';
import 'package:smart_stor/drawer/order_details_screen.dart';
import 'package:smart_stor/drawer/profile_screen.dart';
import 'package:smart_stor/drawer/setting_screen.dart';
import 'package:smart_stor/get/language_getx_controller.dart';
import 'package:smart_stor/model/subCategory.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/screens/launch_screen.dart';
import 'package:smart_stor/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();/*   هنا MyApp رح يستنى لحد يجهز الشيرد بريفيرنس*/
  await SharedPrefController().initPref();
  await DbController().initDatabase();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(375, 812),
      builder: (context, child) {
      return GetX<LanguageGetxController>(
          init: LanguageGetxController(),
          global: true,
          builder:( LanguageGetxController controller){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const[
                AppLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
              ],
              supportedLocales:const [
                Locale('ar'),
                Locale('en'),
              ],
              locale:  Locale(controller.language.value),

              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  centerTitle: true,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  iconTheme: IconThemeData(color: Colors.black),
                  titleTextStyle: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              initialRoute: '/launch_screen',
              routes: {
                '/launch_screen':(context) =>LaunchScreen(),
                '/on_boarding_screen':(context)=> OnBoardingScreen(),
                '/login_screen':(context)=> LoginScreen(),
                '/register_screen':(context)=> RegisterScreen(),
                '/register_success_screen':(context)=> RegisterSuccess(),
                '/forgot_password_screen':(context)=> ForgetPasswordScreen(),
                '/reset_password_screen':(context)=> ResetPasswordScreen(),
                '/home_screen':(context)=> HomeScreen(),
                '/bottom_screen':(context)=> BottomNavigationScreen(),
                // '/products_screen':(context)=> ProductsScreen(),
                // '/subcategories_screen':(context)=> SubCategoriesScreen(id: id),
                '/categories_screen':(context)=> CategoriesScreen(),
                // '/product_details_screen':(context)=> ProductDetailsScreen(),
                // '/cart_screen':(context)=> CartScreen(),
                '/cart_screen':(context)=> CartProductScreen(),
                '/profile_screen':(context)=> ProfileScreen(),
                '/setting_screen':(context)=> SettingScreen(),
                '/orders_screen':(context)=> OrdersScreen(),
                '/order_details_screen':(context)=> OrderDetailsScreen(),
                '/address_screen':(context)=> AddressScreen(),
                '/delivery_details_screen':(context)=> DeliveryDetails(),
                '/cridt_card_screen':(context)=> CridtCard(),
                '/all_address_screen':(context)=> AllAddress(),
                '/notifications_screen':(context)=> Notifications(),
                '/edit_phone_screen_screen':(context)=> EditPhoneNumber(),
                '/contact_screen':(context)=> ContactUsScreen(),



              },
              navigatorKey: Get.key,
            );
          }
      );

    },);
  }
}
