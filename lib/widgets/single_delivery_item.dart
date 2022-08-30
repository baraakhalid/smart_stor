import 'package:flutter/material.dart';
class SingleDeliveryItem  extends StatelessWidget {

  const SingleDeliveryItem ({Key? key,
    required this.name,
    required this.street,
    required this.number,
    required this. buildingname,
    required this. city,

  })
   : super(key: key);
  final String name;
  final String street;
  final String number;
  final String buildingname;
  final String city;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(name),
            ),
            leading: CircleAvatar(
            radius: 8,
            backgroundColor:Color(0xffFF7750),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(city,style: TextStyle(fontSize: 12),),
                  // SizedBox(width: 10,),

                  Text(buildingname ,style: TextStyle(fontSize: 12),),
                  // SizedBox(width: 10,),
                  Text(street,style: TextStyle(fontSize: 12),),
                  // SizedBox(width: 10,),

                ],
              ),

              SizedBox(height: 5,),
              Text(number,style: TextStyle(fontSize: 12),),
            ],

          ),
        ),

      ],

    );
  }
}
