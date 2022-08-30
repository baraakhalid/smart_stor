import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/util/helpers.dart';
import 'package:smart_stor/widgets/app_text_field.dart';
class LoginScreen  extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers{
  late TextEditingController _phoneTextController;
  late TextEditingController _passwordTextController;
  bool _obscure =true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _phoneTextController=TextEditingController();
    _passwordTextController=TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _phoneTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Sing In',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
        child: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sign in with your email and password  \nor continue with social media",style: TextStyle(color: Color(0XFF8B8B8B)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),

            AppTextField(
              hinttext: 'Enter Your Phone Number',
              labeltext: 'Phone',
              keyboardType: TextInputType.number,
              controller: _phoneTextController,
              obscureText: false, suffixIcon:Icon(Icons.phone) ,),
            SizedBox(height: 30,),
            AppTextField(
              hinttext: 'Password',
              labeltext: 'Enter Your Password',
              obscureText: _obscure,

              keyboardType: TextInputType.text,
              controller: _passwordTextController,
              suffixIcon: IconButton(onPressed: (){
                setState(()=> _obscure = !_obscure);
              },icon: Icon(Icons.visibility),),
              obscuresText: _obscure,

            ),
            SizedBox(height: 30,),
            SizedBox(height: 30,),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value){}),
                Text('Remember me',style: TextStyle(fontSize: 14,color:Color(0XFF8B8B8B)),),
                Spacer(),
                TextButton(
                  child: const Text('Forgot password?',style: TextStyle(decoration: TextDecoration.underline),),
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot_password_screen');
                  },
                  style: TextButton.styleFrom(primary: const Color(0xffFF7750)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(325, 63.83),

                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                // primary: Colors.white,
                primary: Color(0xffFF7750),
              ),
              onPressed: () {
                _performLogin();
                      Navigator.pushReplacementNamed(context, '/bottom_screen');
              },

              child: Text(
                'Continue',
                style: TextStyle(

                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20,),

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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       child: const Text('Forgot password?'),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/forgot_password_screen');
            //       },
            //       style: TextButton.styleFrom(primary: const Color(0xff586BCA)),
            //     )
            //   ],
            // ),
            // const Spacer(),
            // ElevatedButton(
            //     onPressed: () {
            //       // print(_emailTextController.text);
            //       // print(_passwordTextController.text);
            //       _performLogin();
            //       Navigator.pushReplacementNamed(context, '/bottom_screen');
            //
            //     },
            //     style: ElevatedButton.styleFrom(
            //         minimumSize: Size(325, 63.83),
            //         primary: Color(0xff586BCA),
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(16))),
            //     child: Text(
            //       'Login',
            //       style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
            //     )),
            // SizedBox(
            //   height: 20.2,
            // ),
            // Row(
            //
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text('Don\'t have an account?'  ,style: GoogleFonts.nunito(color: Color(0xFF707070) ,fontSize: 14)  ),
            //     TextButton(
            //       onPressed: () =>
            //           Navigator.pushReplacementNamed(context, '/register_screen'),
            //       child: Text('Sign Up',style: GoogleFonts.nunito(color: Color(0xff586BCA) ,fontSize: 14)),
            //       style: TextButton.styleFrom(primary: Color(0xffF897D1)),
            //     )
            //   ],
            // ),
            // SizedBox(height: 60),
          ],
        ),
      ),


    );
  }
  void _performLogin(){
    if(_checkData()){
      _login();
    }
  }
  bool _checkData(){
    if(_phoneTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty){
      return true;}
    ShowSnackBar(context,message: 'Enter required data ',error: true);
    return false;
  }
  void _login(){
    Navigator.pushReplacementNamed(context, '/home_screen');

  }

}

