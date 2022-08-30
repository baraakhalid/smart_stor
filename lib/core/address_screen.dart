import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/models/city.dart';
import 'package:smart_stor/models/country.dart';
import 'package:smart_stor/widgets/app_text_field_cart.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int? _cityId;
  late TextEditingController _nameTextController;
  late TextEditingController _streetTextController;
  late TextEditingController _buildingNameController;
  late TextEditingController _phoneController;
  late TextEditingController _descriptionTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController=TextEditingController();
    _streetTextController=TextEditingController();
    _buildingNameController=TextEditingController();
    _phoneController=TextEditingController();
    _descriptionTextController=TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    _streetTextController.dispose();
    _buildingNameController.dispose();
    _phoneController.dispose();
    _descriptionTextController.dispose();
    super.dispose();
  }




  //Countries List

  final List<City> _cities = <City>[
    const City(id: 1, title: 'Gaza'),
    const City(id: 2, title: 'Rafah'),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              Text(' name*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.text,
                controller: _nameTextController,),
              Text('street*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.text,
                controller: _streetTextController,),
              Text('building name*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.number,
                controller: _buildingNameController,),
              Text(' description*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.text,
                controller: _descriptionTextController,),
              Text('phone Number*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const  SizedBox(height: 13,),
              AppTextFieldCart(  keyboardType: TextInputType.number,
                controller: _phoneController,),
              Text('City*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
              const SizedBox(height: 7,),
              Container(
                height: 60,
                width: double.infinity,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xff8b8b8b)),
                ),
                child: DropdownButton<int>(
                  isExpanded: true,
                  underline: Divider(color: Colors.transparent,),
                  hint: const Text('Select City'),
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                  ),
                  onChanged: (int? value) {
                    setState(() => _cityId = value);
                  },
                  value: _cityId,
                  items: _cities.map(
                        (city) {
                      return DropdownMenuItem<int>(

                        child:Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(city.title),
                        ),
                        value: city.id,

                      );
                    },
                  ).toList(),
                  // onChanged: (int ? value){},
                ),
              ),
              SizedBox(height: 42,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(325, 63.83),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                  // primary: Colors.white,
                  primary: Color(0xffFF7750),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/cridt_card_screen');
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
