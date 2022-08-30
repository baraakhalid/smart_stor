import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'TOKOTO',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: const Color(0xffFF7750),
            ),
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,

        ),
        const Spacer(flex: 2),
        Image.asset(
          'images/$image.png',
          height: 265,
          width: 235,
          fit: BoxFit.fill,
        ),

      ],
    );
  }
}
