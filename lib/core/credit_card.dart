import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/widgets/app_text_field_cart.dart';
class CridtCard extends StatefulWidget {
  const CridtCard({Key? key}) : super(key: key);

  @override
  State<CridtCard> createState() => _CridtCardState();
}

class _CridtCardState extends State<CridtCard> {
  String? _credit;

  late TextEditingController _cardnameTextController;
  late TextEditingController _cardnumberTextController;
  late TextEditingController _expiryTextController;
  late TextEditingController _CVVTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cardnameTextController=TextEditingController();
    _cardnumberTextController=TextEditingController();
    _expiryTextController=TextEditingController();
    _CVVTextController=TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _cardnameTextController.dispose();
    _cardnumberTextController.dispose();
    _expiryTextController.dispose();
    _CVVTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Cards'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(

                children: [
                  Container(
                    height: 79,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -15),
                          blurRadius: 20,
                          color: Color(0xFFDADADA).withOpacity(0.20),
                        )
                      ],
                    ),
                    child: RadioListTile<String>
                      (
                        title:
                        ListTile(
                          trailing: Icon(Icons.credit_card),
                          title: Text('Credit card'),
                          subtitle: Text('1234 **** **** 5642'),
                        ),
                        value: 'M',
                        groupValue: _credit,
                        activeColor: Color(0xffFF7750),

                        onChanged: (String? value){
                          setState(() => _credit=value);
                        }
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 79,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -15),
                          blurRadius: 20,
                          color: Color(0xFFDADADA).withOpacity(0.20),
                        )
                      ],
                    ),
                    child: RadioListTile<String>
                      (
                       title:
                       ListTile(
                           trailing: Icon(Icons.paypal),
                            title: Text('Paypal'),
                         subtitle: Text('Themadbrains'),
                                      ),
                        value: 'F',
                        groupValue: _credit,
                        activeColor: Color(0xffFF7750),
                        onChanged: (String? value){
                          setState(() => _credit=value);

                        }
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 79,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -15),
                          blurRadius: 20,
                          color: Color(0xFFDADADA).withOpacity(0.20),
                        )
                      ],
                    ),
                    child: RadioListTile<String>
                      (
                        title:
                        ListTile(
                          trailing: Icon(Icons.credit_card),
                          title: Text('Debit card'),
                          subtitle: Text('Themadbrains'),

                        ),
                        value: 'b',
                        groupValue: _credit,
                        activeColor: Color(0xffFF7750),
                        onChanged: (String? value){
                          setState(() => _credit=value);

                        }
                    ),
                  ),
                  SizedBox(height: 26,),
                  Row(
                    children: [
                      Icon(Icons.add,color: Color(0xffF3651F),),
                      SizedBox(width: 14,),

                      TextButton(
                        child: Text('Add New Card',style: GoogleFonts.poppins(fontSize: 16,color: Color(0xffF3651F))),
                        onPressed: (){_showConfirmBottomSheet();},)
                    ],
                  )


                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            // height: 174,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xFFDADADA).withOpacity(0.15),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Items',style: GoogleFonts.poppins(fontSize: 16),),
                    Spacer(),
                    Text('6',style: GoogleFonts.poppins(fontSize: 18),),
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  children: [
                    Text('Sub total',style: GoogleFonts.poppins(fontSize: 16),),
                    Spacer(),
                    Text('\$21.00',style: GoogleFonts.poppins(fontSize: 18),),
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  children: [
                    Text('Delivery charge',style: GoogleFonts.poppins(fontSize: 16),),
                    Spacer(),
                    Text('\$.05',style: GoogleFonts.poppins(fontSize: 18),),
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  children: [
                    Text('Total',style: GoogleFonts.poppins(fontSize: 16,color: Color(0xffFF7750)),),
                    Spacer(),
                    Text('\$.05',style: GoogleFonts.poppins(fontSize: 18,color: Color(0xffFF7750)),),
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



              ],
            ),
          ),

        ],
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
            return  Container(
              height: 523,
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 30,
              ),
              // height: 174,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -15),
                    blurRadius: 20,
                    color: Color(0xFFDADADA).withOpacity(0.15),
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add Payment Method',style: GoogleFonts.poppins(fontSize: 20),),
                    SizedBox(height: 13,),
                    Text('Card name*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
                    SizedBox(height: 13,),
                    AppTextFieldCart(  keyboardType: TextInputType.text,
                        controller: _cardnameTextController,),
                    Text('Card number*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
                    SizedBox(height: 13,),
                    AppTextFieldCart(  keyboardType: TextInputType.number,
                        controller: _cardnumberTextController,),
                    Text('Expiry date*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
                    SizedBox(height: 13,),
                    AppTextFieldCart(  keyboardType: TextInputType.number,
                        controller: _expiryTextController,),
                    Text('CVV*',style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff9A9A9A)),),
                    SizedBox(height: 13,),
                    AppTextFieldCart(  keyboardType: TextInputType.number,
                        controller: _CVVTextController,),
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
                      Navigator.pushReplacementNamed(context, '/bottom_screen');
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
            );


          },);
        });
  }



}
