import 'package:flutter/material.dart';
import 'package:smart_stor/widgets/single_delivery_item.dart';
class DeliveryDetails  extends StatelessWidget {
  const DeliveryDetails ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Details '),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

      ),
      body: ListView(
        children:  [
          ListTile(
            title: Text("Deliver To"),
            leading: Icon(Icons.location_on_rounded),
          ),

          Divider(
            height: 1,
          ),
          Container(
            height: 160,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              children: [
                SingleDeliveryItem(name: 'Kharodi'
                    , info: 'Akshya Nagar 1st', number: '0597700344',  city: 'Gaza'),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 63),
                  child: Row(
                    children: [
                      Container(
                        height: 36,
                        width: 94,
                        color: Color(0xffFAE7DA),
                        child: Center(child: Text('Edit',style: TextStyle(fontSize: 14,color: Color(0XFFFF8236)),)),
                      ),
                      SizedBox(width: 66,),
                      Container(
                        height: 36,
                        width: 94,
                        color: Color(0xffF4F5F7),
                        child: Center(child: Text('Delete',style: TextStyle(fontSize: 14,color: Colors.black),)),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),





        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFF7750),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/address_screen');
        },
      ),
      bottomNavigationBar: Container(
        // width: 160,
        height: 56,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

            primary: Color(0xffFF7750),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/cridt_card_screen');
          },
          child: Text(
            'Continue',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),


      ),


    );
  }
}