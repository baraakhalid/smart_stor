import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';


extension contextExtenssion on BuildContext{
  void ShowSnackBar({required String message,bool error=false}){
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: GoogleFonts.cairo(),
        ),
        backgroundColor: error?Colors.red.shade800:Colors.green.shade800,
        duration: Duration(seconds: 2),
        dismissDirection:DismissDirection.horizontal,
      ),
    );
  }
  AppLocalizations get localizations{
    return AppLocalizations.of(this)!;
  }


}