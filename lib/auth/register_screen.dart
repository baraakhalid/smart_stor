import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/api/auth_api_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/model/user.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/context_extenssion.dart';
import 'package:smart_stor/widgets/app_text_field.dart';
// import 'package:smart_stor/models/city.dart';
 import 'package:smart_stor/model/city.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _nameTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _phoneTextController;
  late TextEditingController _cityTextController;
  late Future<List<City>> cities;
   String? _gender;
  bool _obscure =true;
  int? _cityId=1;
  late Future<List<City>> _cities;
  late TextEditingController _emailTextController;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    _cities = AuthApiController().getCities() as Future<List<City>> ;
    _emailTextController = TextEditingController();
    _nameTextController=TextEditingController();
    _passwordTextController=TextEditingController();
    _phoneTextController=TextEditingController();
    _cityTextController = TextEditingController();


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _cityTextController.dispose();
    _nameTextController.dispose();
    _passwordTextController.dispose();
    _phoneTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              icon: Icon(Icons.arrow_back),
            ),
        title: Text('Sing Up',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 18),),
      ),
      body: Container(
        width: double.infinity,

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
          child: ListView(
            children: [
              const Center(
                child: Text(
                  "Register Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Complete your details or continue \nwith social media",style: TextStyle(color: Color(0XFF8B8B8B)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              AppTextField(
                hinttext: 'Enter Your Name',
                labeltext: 'Full Name',
                keyboardType: TextInputType.text,
                controller: _nameTextController,
                obscureText: false, suffixIcon:Icon(Icons.perm_identity) ,),
              const SizedBox(height: 20,),
              AppTextField(
                hinttext: 'Enter Your Phone Number',
                labeltext: 'Phone',
                keyboardType: TextInputType.number,
                controller: _phoneTextController,
                obscureText: false, suffixIcon:Icon(Icons.phone) ,),
              const SizedBox(height: 20,),
              AppTextField(
                hinttext: 'Enter Your Email',
                labeltext: 'Email',
                keyboardType: TextInputType.emailAddress,
                controller: _emailTextController,
                obscureText: false, suffixIcon:Icon(Icons.email) ,),
              const   SizedBox(height: 20,),
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
              const SizedBox(height: 20,),
              Container(
                height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: Color(0xff8b8b8b)),
                  ),
                child: FutureBuilder<List<City>>(
                  future: _cities,
                  builder: (context, snapshot) {
                    List data = snapshot.data! as List;
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                      List<City> cities= snapshot.data! ;
                      // List<City> cities=[];

                      return DropdownButtonFormField<int>(
                          isExpanded: true,
                          //     underline: Divider(color: Colors.transparent,),

                          hint: Text(
                            'Select City',

                            style: GoogleFonts.nunito(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFCACACA)),
                          ),


                          value: _cityId,
                          selectedItemBuilder: (BuildContext context) {
                            return _cityId != null
                                ? cities
                                .map((city) => DropdownMenuItem<int>(

                              child: Text(SharedPrefController().getValueFor<String>('language')=='en'?cities
                                  .firstWhere((element) =>
                              element.id == _cityId).nameEn! :
                              cities.firstWhere((element) =>
                              element.id == _cityId)
                                  .nameAr!),
                              value: city.id,
                            ))
                                .toList()
                                : [];
                          },
                          items: cities
                              .map((city) => DropdownMenuItem<int>(
                            child: Text(SharedPrefController().getValueFor<String>('language')=='en'?city.nameEn!:city.nameAr!),
                            value: city.id,
                          ))
                              .toList(),
                          onChanged: (int? value) {
                            setState(() => _cityId = value);
                          });
                      return Text('');
                    } else {
                      return Text('No Data');
                    }
                  },
                ),
              ),
              // Container(
              //   height: 60,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(28),
              //     border: Border.all(color: Color(0xff8b8b8b)),
              //   ),
              //   child: DropdownButton<int>(
              //     isExpanded: true,
              //     underline: Divider(color: Colors.transparent,),
              //     hint: Padding(
              //       padding: const EdgeInsets.only(left: 10,top: 10),
              //       child:  Text('Select City',style: GoogleFonts.nunito(fontSize: 16 ,fontWeight:FontWeight.w400 , color:Color(0xFFCACACA)),),
              //     ),
              //     style: GoogleFonts.nunito(
              //       color: Colors.black,
              //     ),
              //     icon: const Padding(
              //       padding: EdgeInsets.only(right: 10,top: 10),
              //       child: Icon(Icons.keyboard_arrow_down_sharp,size: 30,),
              //     ),
              //     onChanged: (int? value) {
              //       setState(() => _cityId = value!);
              //     },
              //
              //
              //     value: _cityId,
              //     items: _cities.map(
              //           (city) {
              //         return DropdownMenuItem<int>(
              //
              //           child:Padding(
              //             padding: const EdgeInsets.only(left: 10,top: 10),
              //             child: Text(city.title),
              //           ),
              //           value: city.id,
              //
              //         );
              //       },
              //     ).toList(),
              //     // onChanged: (int ? value){},
              //   ),
              // ),
              
              const SizedBox(height: 20,),
              Text('Gender',style: GoogleFonts.nunito(fontSize: 18,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>
                      (
                      title: Text('Male',style: GoogleFonts.nunito(),),
                        value: 'M',
                        groupValue: _gender,
                        activeColor: Color(0xffFF7750),

                        onChanged: (String? value){
                        setState(() => _gender=value!);
                        }
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>
                      (
                        title: Text('Female',style: GoogleFonts.nunito(),),
                        value: 'F',
                        groupValue: _gender,
                        activeColor: Color(0xffFF7750),
                        onChanged: (String? value){
                          setState(() => _gender=value!);

                        }
                    ),
                  ),

                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/register_success_screen');
                    _performRegister();

                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(325, 63.83),
                      primary: Color(0xffFF7750),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    'Sing Up',
                    style: GoogleFonts.nunito(fontSize: 16 ,color: Color(0xffFFFFFF) ,fontWeight: FontWeight.bold),
                  )),
              const   SizedBox(
                height: 20.2,
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have an account? Please'  ,style: GoogleFonts.nunito(color: Color(0xFF707070) ,fontSize: 14)  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/login_screen'),
                    child: Text('Sign In',style: GoogleFonts.nunito(color: Color(0xffFF7750) ,fontSize: 14)),
                    style: TextButton.styleFrom(primary: Color(0xffF3651F)),
                  )
                ],
              ),
              // SizedBox(height: 60),
            ],
          ),
        ),
      ),

    );
  }

  void _performRegister(){
    if(_checkData()){
      _register();
    }
  }
  bool _checkData(){
    if(_emailTextController.text.isNotEmpty &&
    _phoneTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty && _nameTextController.text.isNotEmpty){
      return true;
    }
    context.ShowSnackBar(message: 'Enter Required Data',error: true);
    return false;
  }
  void _register()async{
    ApiResponse apiResponse =await AuthApiController().register(user);
    if(apiResponse.success){
      Navigator.pushReplacementNamed(context, '/register_success_screen');

    }
    context.ShowSnackBar(message:apiResponse.message,error: !apiResponse.success);

  }
   User get user{
   User user =User();
   user.name=_nameTextController.text;
   user.mobile=_phoneTextController.text;
   user.password=_passwordTextController.text;
   user.gender= _gender;
   user.cityId= _cityId.toString();
   return user;
  }
}
