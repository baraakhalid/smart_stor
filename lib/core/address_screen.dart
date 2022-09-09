import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/core/home_screen.dart';
import 'package:smart_stor/get/address_getx_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/models/city.dart';
import 'package:smart_stor/models/country.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';
import 'package:smart_stor/util/context_extenssion.dart';
import 'package:smart_stor/widgets/app_text_field_cart.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  late TextEditingController _cityTextController;
  late TextEditingController _addressTextController;
  late TextEditingController _infoTextController;
  late TextEditingController _phoneTextController;
  AddressGetxController controller = Get.put(AddressGetxController());

  late int? _selectedCityId = 1;

  @override
  void initState() {
    super.initState();
    _cityTextController = TextEditingController();
    _addressTextController = TextEditingController();
    _infoTextController = TextEditingController();
    _phoneTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _cityTextController.dispose();
    _addressTextController.dispose();
    _infoTextController.dispose();
    _phoneTextController.dispose();

    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        title: Text('Add Addresses'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(' Address*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.text,
                controller: _addressTextController,),
              Text('info*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.text,
                controller: _infoTextController,),
              Text('contact_number*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.number,
                controller: _phoneTextController,),
              Text('city*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              DropdownButtonFormField<int>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      //<-- SEE HERE
                      borderSide: BorderSide(
                        color: Color(0xff8b8b8b),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      //<-- SEE HERE
                      borderSide: BorderSide(color: Color(0xFFFF7750), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  // style: BorderRadius(),
                  hint: Text(
                    'Select City',
                    style: GoogleFonts.nunito(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFCACACA)),
                  ),
                  value: _selectedCityId,
                  selectedItemBuilder: (BuildContext context) {
                    return _selectedCityId != null
                        ? controller.cities
                        .map((city) => DropdownMenuItem<int>(
                      child: Text(SharedPrefController()
                          .getValueFor<String>('language') ==
                          'en'
                          ? controller.cities
                          .firstWhere((element) =>
                      element.id == _selectedCityId)
                          .nameEn!
                          : controller.cities
                          .firstWhere((element) =>
                      element.id == _selectedCityId)
                          .nameAr!),
                      value: city.id,
                    ))
                        .toList()
                        : [];
                  },
                  items: controller.cities
                      .map((city) => DropdownMenuItem<int>(
                    child: Text(SharedPrefController()
                        .getValueFor<String>('language') ==
                        'en'
                        ? city.nameEn!
                        : city.nameAr!),
                    value: city.id,
                  ))
                      .toList(),
                  onChanged: (int? value) {
                    setState(() => _selectedCityId = value);
                  }),
              const SizedBox(height: 30,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(325, 63.83),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                  // primary: Colors.white,
                  primary: Color(0xffFF7750),
                ),
                onPressed: ()async {
                    ApiResponse process=await AddressGetxController.to.createAddress(
                        _addressTextController.text,
                        _infoTextController.text,
                        _phoneTextController.text,
                        int.parse(_selectedCityId.toString()
                        )
                    );
                    context.ShowSnackBar(message: process.message,error: !process.success);
                    Get.off(HomeScreen());
                  // Navigator.pushReplacementNamed(context, '/cridt_card_screen');
                },

                child: Text(
                  'Confirm Payment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),


            ],
          ),
        ),
      ) ,
    );
  }
}
