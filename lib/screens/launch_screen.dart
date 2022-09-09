import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();

}
class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      String loggedIn = SharedPrefController().getValueFor<bool>( PrefKeys.loggedIn.name) ?? false ? '/bottom_screen':'/on_boarding_screen' ;
      Navigator.pushReplacementNamed(context, loggedIn);
      //  Navigator.pushReplacementNamed(context, '/categories_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child:
        Image.asset('images/Group 36198.png',height: 100,)
        ),
       



      ),
    );
  }
}
