import 'package:flutter/material.dart';
class SingleDeliveryItem  extends StatelessWidget {

  const SingleDeliveryItem ({Key? key,
    required this.name,
    required this.info,
    required this.number,

    required this. city,

  })
   : super(key: key);
  final String name;
  final String info;
  final String number;
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

                  Text(info ,style: TextStyle(fontSize: 12),),
                  // SizedBox(width: 10,),
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
