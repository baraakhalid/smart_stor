import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hinttext,
    required this.labeltext,
    // required this.prefixIcon,
    required this.keyboardType,
    // this.focusedBorderColor=Colors.grey,

    this.obscuresText=false,
    required this.controller,
    this.suffixIcon, required obscureText,

  }) : super(key: key);
  final String hinttext;
  final String labeltext;
  // final IconData prefixIcon;
  final TextInputType keyboardType;
  // final Color focusedBorderColor;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool obscuresText;



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscuresText,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.always,

        labelText: labeltext,
        hintText: hinttext,
        hintStyle: GoogleFonts.nunito(fontSize: 16 ,fontWeight:FontWeight.w400 , color:Color(0xFFCACACA)),
        hintMaxLines: 1,
        suffixIconColor: Color(0xffF3651F),


        suffixIcon: suffixIcon ,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: Color(0xff8b8b8b)),
            gapPadding: 10
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: Color(0xffF3651F)),


            gapPadding: 10
        ),
        // enabledBorder: buildOutlineInputBorder(color:focusedBorderColor),
        // focusedBorder: buildOutlineInputBorder(color:focusedBorderColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color),
    );
  }
}







// TextField(
// // keyboardType: TextInputType.number,
// decoration: InputDecoration(
// // labelText: 'Phone',
// // hintText: 'Enter Your Phone Number',
// floatingLabelBehavior: FloatingLabelBehavior.always,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(28),
// borderSide: BorderSide(color: Color(0xff8b8b8b)),
// gapPadding: 10
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(28),
// borderSide: BorderSide(color: Color(0xff8b8b8b)),
// gapPadding: 10
// ),
// suffixIcon: Icon(Icons.phone),
//
//
// ),
// ),
//
//
