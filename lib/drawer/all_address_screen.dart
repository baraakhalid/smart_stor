import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_stor/get/address_getx_controller.dart';
import 'package:smart_stor/model/api_response.dart';
import 'package:smart_stor/util/context_extenssion.dart';
import 'package:smart_stor/widgets/single_delivery_item.dart';
class AllAddress extends StatelessWidget {
   AllAddress({Key? key}) : super(key: key);
  AddressGetxController controller=Get.put(AddressGetxController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('All Addresses') ,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFF7750),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/address_screen');
        },
      ),

      body:GetX<AddressGetxController>(
          builder: (controller){
            return controller.loading.value
                ? Center(child: CircularProgressIndicator())
                :ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.addresses.value.length,
                  itemBuilder: (context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    background: Container(color: Colors.red),
                    onDismissed: (direction) async {
                      // print(controller.addresses[index].id!);
                      ApiResponse process =
                      await controller.deleteAddress(controller.addresses[index].id!);
                      context.ShowSnackBar(
                          message: process.message,
                          error: !process.success);
                    },
                    child: Column(
                      children: [
                        Divider(
                          height: 1,
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                            child: Column(
                            children: [
                               SingleDeliveryItem(name:controller.addresses[index].name!,info: controller.addresses[index].info!,number:  controller.addresses[index].contactNumber!,  city:  controller.addresses[index].city!.nameEn!),
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
                                           child: Center(child: TextButton(
                                                onPressed: ()async{
                                           ApiResponse process =
                                           await controller.deleteAddress(controller.addresses[index].id!);
                                           context.ShowSnackBar(
                                           message: process.message,
                                           error: !process.success);
                                              },
                                              child: Text('Delet',style: TextStyle(fontSize: 14,color: Colors.black),),
                                              ),
                              ),

                              ),
                              ],
                              ),
                              ),

                              ],
                    ),
                      ),],
                      ),
                  );
          }
      );




    }
    ),
    );
  }
}
