import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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

      Navigator.pushReplacementNamed(context, '/on_boarding_screen');
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
