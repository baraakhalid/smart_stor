import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
   String _language = 'en';




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 40, backgroundImage: AssetImage('images/profile.png')),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                       Text('Baraa Turban',style:GoogleFonts.nunito(fontSize: 18)),
                       Text('0597700344',style:GoogleFonts.nunito(fontSize: 14))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('Profile'),
                  subtitle: Text('Baraa',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.person),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/profile_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('language'),
                  subtitle: Text('English',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.language),color: Colors.black,onPressed: (){},),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('Edit Mobile'),
                  subtitle: Text('Last update(1/1/2012)',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.phone_android_outlined,color: Colors.black),onPressed: (){
                    Navigator.pushNamed(context, '/edit_phone_screen_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('Change Password'),
                  subtitle: Text('Last update(1/1/2012)',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12),),
                  leading: IconButton(icon:Icon(Icons.password),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/reset_password_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('Contact Us'),
                  leading: IconButton(icon:Icon(Icons.quick_contacts_dialer),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/reset_password_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26),
                ),
                child: ListTile(
                  title: Text('About Us'),
                  leading: IconButton(icon:Icon(Icons.info_outline),color: Colors.black,onPressed: (){
                    Navigator.pushNamed(context, '/reset_password_screen');
                  },),
                  trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,color: Colors.black) ,onPressed: (){},),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Text('Log Out',style: GoogleFonts.nunito(color:Colors.red),),
              ),
            ],
          ),
        ),
      ),



    );
  }

}
