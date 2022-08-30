import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/drawer/taps/first_tap.dart';
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders',style: GoogleFonts.nunito(fontWeight: FontWeight.bold,fontSize: 18),),
        bottom: TabBar(
          // isScrollable: true,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.zero,
          indicatorColor: Color(0xff7530FF),
          labelColor: Colors.black,
          //
          // labelStyle: GoogleFonts.nunito(
          //   fontWeight: FontWeight.bold,
          // ),


          padding: EdgeInsets.only(top: 10 ),
          controller: _tabController,
          tabs: const [
            Tab(text: 'Completed'),
            Tab(text: 'Canselled'),
            Tab(text: 'Waiting'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  [
          FirstTabScreen(),
          FirstTabScreen(),
          FirstTabScreen(),


        ],
      ),
    );
  }
}
