import 'package:flutter/material.dart';
class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Notifications') ,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0,0),
                    blurRadius: 2
                ),

              ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.orange,),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Notifications'),
                              SizedBox(height: 5,),
                              Text('Lorem ipsum dolor sit amet,consectetur',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12)),
                              Text(' sed do eiusmod tempor incididunt ut labore ',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12))


                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.access_time_rounded,color: Color(0XFF8B8B8B),),
                        Text('9:00',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 16))
                      ],

                    ),

                  ],
                ),

              ),
              SizedBox(height: 10,),
              Container(
                // height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,0),
                          blurRadius: 2
                      ),

                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.orange,),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Notifications'),
                              SizedBox(height: 5,),
                              Text('Lorem ipsum dolor sit amet,consectetur',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12)),
                              Text(' sed do eiusmod tempor incididunt ut labore ',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12))


                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.access_time_rounded,color: Color(0XFF8B8B8B),),
                        Text('9:00',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 16))
                      ],

                    ),

                  ],
                ),

              ),
              SizedBox(height: 10,),

              Container(
                // height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,0),
                          blurRadius: 2
                      ),

                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.orange,),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Notifications'),
                              SizedBox(height: 5,),
                              Text('Lorem ipsum dolor sit amet,consectetur',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12)),
                              Text(' sed do eiusmod tempor incididunt ut labore ',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12))


                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.access_time_rounded,color: Color(0XFF8B8B8B),),
                        Text('9:00',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 16))
                      ],

                    ),

                  ],
                ),

              ),
              SizedBox(height: 10,),

              Container(
                // height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,0),
                          blurRadius: 2
                      ),

                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.orange,),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Notifications'),
                              SizedBox(height: 5,),
                              Text('Lorem ipsum dolor sit amet,consectetur',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12)),
                              Text(' sed do eiusmod tempor incididunt ut labore ',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12))


                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.access_time_rounded,color: Color(0XFF8B8B8B),),
                        Text('9:00',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 16))
                      ],

                    ),

                  ],
                ),

              ),
              SizedBox(height: 10,),

              Container(
                // height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,0),
                          blurRadius: 2
                      ),

                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.orange,),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Notifications'),
                              SizedBox(height: 5,),
                              Text('Lorem ipsum dolor sit amet,consectetur',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12)),
                              Text(' sed do eiusmod tempor incididunt ut labore ',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12))


                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.access_time_rounded,color: Color(0XFF8B8B8B),),
                        Text('9:00',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 16))
                      ],

                    ),

                  ],
                ),

              ),
              SizedBox(height: 10,),

              Container(
                // height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,0),
                          blurRadius: 2
                      ),

                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.orange,),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Notifications'),
                              SizedBox(height: 5,),
                              Text('Lorem ipsum dolor sit amet,consectetur',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12)),
                              Text(' sed do eiusmod tempor incididunt ut labore ',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 12))


                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.access_time_rounded,color: Color(0XFF8B8B8B),),
                        Text('9:00',style: TextStyle(color: Color(0XFF8B8B8B),fontSize: 16))
                      ],

                    ),

                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
