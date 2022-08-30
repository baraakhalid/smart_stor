import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTextFieldCart extends StatelessWidget {
  const AppTextFieldCart({
    Key? key,

    required this.keyboardType,

    required this.controller,

  }) : super(key: key);
  final TextInputType keyboardType;
  final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,


      decoration: InputDecoration(


        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Color(0xff8b8b8b)),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Color(0xffF3651F)),

        ),

      ),
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
