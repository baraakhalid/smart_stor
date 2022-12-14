import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_stor/prefs/shared_pref_controller.dart';

class LanguageGetxController extends GetxController{
  String currentLanguage = SharedPrefController().getValueFor<String>(PrefKeys.language.name) ?? 'en';
  RxString language =''.obs;


  static LanguageGetxController get to => Get.find<LanguageGetxController>();

  @override
  void onInit() {
    // TODO: implement onInit
    language.value =currentLanguage;
    super.onInit();
  }
  void changeLanguage(){
    language.value=language.value =='en'? 'ar':'en';
    SharedPrefController().changeLanguage(langCode: language.value);
    update();
  }

}