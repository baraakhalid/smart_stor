import 'package:flutter/material.dart';
class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Register Success',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18),),
      ),
      body:Column(
        children: [
          SizedBox(height:45),
          Image.asset('images/success.png'),
          SizedBox(height: 45),
          Text(
            "Register Success",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(250, 63.83),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              // primary: Colors.white,
              primary: Color(0xffFF7750),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login_screen');
            },

            child: Text(
              'Sing In',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),


        ],
      )

    );
  }
}
