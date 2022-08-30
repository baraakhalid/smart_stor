import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/widgets/app_text_field.dart';
class EditPhoneNumber extends StatefulWidget {
  const EditPhoneNumber({Key? key}) : super(key: key);

  @override
  State<EditPhoneNumber> createState() => _EditPhoneNumberScreenState();
}

class _EditPhoneNumberScreenState extends State<EditPhoneNumber> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  bool _obscure =true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController=TextEditingController();
    _passwordTextController=TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Edit Mobile',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18),),

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [



            Text(
              'Edit Mobile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Set the new Mobile for your account and you can access all the features.',style: TextStyle(color: Color(0XFF8B8B8B)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),

            AppTextField(
              // prefixIcon: Icons.lock,
              hinttext: ' Mobile',
              labeltext: 'Enter new Mobile',
              obscureText: _obscure,
              keyboardType: TextInputType.text,
              controller: _passwordTextController,
              suffixIcon: IconButton(onPressed: (){
                setState(()=> _obscure = !_obscure);
              },icon: Icon(Icons.visibility),),
              obscuresText: _obscure,
            ),
            SizedBox(height: 20,),

            AppTextField(
              hinttext: 'Repeat Mobile',
              labeltext: ' Mobile',
              obscureText: _obscure,
              keyboardType: TextInputType.text,
              controller: _passwordTextController,
              suffixIcon: IconButton(onPressed: (){
                setState(()=> _obscure = !_obscure);
              },icon: Icon(Icons.visibility),),
              obscuresText: _obscure,
            ),
            SizedBox(height: 20,),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  _confrmeDialog();
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
            SizedBox(
              height: 64.2,
            ),

          ],
        ),
      ),



    );
  }
  void _confrmeDialog(){
    showDialog(context: context,
        // barrierColor: Colors.red.shade100.withOpacity(0.5),
        barrierColor:Color(0xff3E3E3E) ,
        // barrierDismissible: false,
        builder: (context){
          return AlertDialog(

            title: Icon(Icons.check_circle,size: 40),
            // title: Text('Change Password Success!',style: GoogleFonts.nunito(fontSize: 17,fontWeight: FontWeight.bold),),
            // content: Text('Tap to login to your account',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.w400),),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Change Password Success!',style: GoogleFonts.nunito(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('Tap to login to your account',style: GoogleFonts.nunito(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0XFFCACACA)),),

              ],
            ),
          );

        });
  }
}
