import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/widgets/app_text_field.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController _emailTextController;
  bool _obscure =true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController=TextEditingController();


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(


          leading:IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Forgot Password',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18),),

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '"Please enter your email and we will send \nyou a link to return to your account"',style: TextStyle(color: Color(0XFF8B8B8B)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            AppTextField(
              hinttext: 'Enter Your Email',
              labeltext: 'Email',
              keyboardType: TextInputType.text,
              controller: _emailTextController,
              obscureText: false, suffixIcon:Icon(Icons.email) ,),
            SizedBox(height: 20,),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  _showConfirmBottomSheet();

                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(325, 63.83),
                    primary: Color(0xffFF7750),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'Confirm',
                  style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 64),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'  ,style: GoogleFonts.nunito(color: Color(0xFF707070) ,fontSize: 14)  ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/register_screen'),
                  child: Text('Sign Up',style: GoogleFonts.nunito(color: Color(0xffFF7750) ,fontSize: 14)),
                  style: TextButton.styleFrom(primary: Color(0xffF897D1)),
                )
              ],
            ),
            SizedBox(height: 64),
          ],
        ),
      ),



    );
  }
  void _showConfirmBottomSheet(){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.white,
        context: context,
        builder: (context){
      return BottomSheet( onClosing:(){}, builder: (context){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:30),
              child: Text('Thank You!',style: GoogleFonts.nunito(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0XFF3E3E3E)),),
            ),
            // SizedBox(height:20 ,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 20),
              child: Text('We will sent 4 digits verification code to rizalegreyrat34@gmail.com please take look and verify it',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black45,)),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
                onPressed: () {
                  _verifyCodeBottomSheet();

                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(325, 63.83),
                    primary: Color(0xffFF7750),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'Verify Now',
                  style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 40,),





          ],
        );

      },);
    });
  }
  void _verifyCodeBottomSheet(){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.white,
        context: context,
        builder: (context){
          return BottomSheet( onClosing:(){}, builder: (context){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Text('Enter Your Code',style: GoogleFonts.nunito(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0XFF3E3E3E)),),
                ),
                // SizedBox(height:20 ,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 20),
                  child: Text('Enter the 4 digits code that you recived on your email',
                      style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black45,)),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/reset_password_screen');

                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(325, 63.83),
                        primary: Color(0xffFF7750),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: Text(
                      'Verify Now',
                      style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 60,),





              ],
            );

          },);
        });
  }


}

